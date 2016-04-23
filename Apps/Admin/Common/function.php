<?php 
/**
 * 系统邮件发送函数
 * @param string $to    接收邮件者邮箱
 * @param string $name  接收邮件者名称
 * @param string $subject 邮件主题
 * @param string $body    邮件内容
 * @param string $attachment 附件列表
 * @return boolean
 */
function think_send_mail($to, $name, $subject = '', $body = '', $attachment = null){
	$Config = D ("Config");
	$mail_server = $Config->where("varname = 'mail_server'")->getField("value");
	$mail_port = $Config->where("varname = 'mail_port'")->getField("value");
	$mail_from = $Config->where("varname = 'mail_from'")->getField("value");
	$mail_user = $Config->where("varname = 'mail_user'")->getField("value");
	$mail_password = $Config->where("varname = 'mail_password'")->getField("value");
	
	vendor('PHPMailer.class#phpmailer'); //从PHPMailer目录导class.phpmailer.php类文件
	$mail             = new \Vendor\PHPMailer(); //PHPMailer对象
	$mail->CharSet    = 'UTF-8'; //设定邮件编码，默认ISO-8859-1，如果发中文此项必须设置，否则乱码
	$mail->IsSMTP();  // 设定使用SMTP服务
	$mail->SMTPDebug  = 0;                     // 关闭SMTP调试功能
	// 1 = errors and messages
	// 2 = messages only
	$mail->SMTPAuth   = true;                  // 启用 SMTP 验证功能

	$mail->Host       = $mail_server;  // SMTP 服务器
	$mail->Port       = $mail_port;  // SMTP服务器的端口号
	if($mail_port != 25){
		$mail->SMTPSecure = 'ssl';  			// 使用安全协议
	}
	$mail->Username   = $mail_from;  // SMTP服务器用户名
	$mail->Password   = $mail_password;  // SMTP服务器密码 
	$mail->SetFrom($mail_from, $mail_user); 
	$replyEmail       = $mail_from; 
	$replyName        = $mail_user; 
	$mail->AddReplyTo($replyEmail, $replyName); 
	$mail->Subject    = $subject;
	$mail->MsgHTML($body);
	$mail->AddAddress($to, $name);
	if(is_array($attachment)){ // 添加附件
		foreach ($attachment as $file){
			is_file($file) && $mail->AddAttachment($file);
		}
	}
	return $mail->Send() ? true : $mail->ErrorInfo;
}


/**
 * 对字符串进行加密
 * 
 * @param string $str 需要加密的内容
 * @param string $key 秘钥
 */
function passport_encrypt($str, $key = "e8network") { // 加密函数
	srand ( ( double ) microtime () * 1000000 );
	$encrypt_key = md5 ( rand ( 0, 32000 ) );
	$ctr = 0;
	$tmp = '';
	for($i = 0; $i < strlen ( $str ); $i ++) {
		$ctr = $ctr == strlen ( $encrypt_key ) ? 0 : $ctr;
		$tmp .= $encrypt_key [$ctr] . ($str [$i] ^ $encrypt_key [$ctr ++]);
	}
	return base64_encode ( passport_key ( $tmp, $key ) );
}

/**
 * 对加密的字符串进行解密
 *
 * @param string $str 需要解密的密文
 * @param string $key 秘钥
 */
function passport_decrypt($str, $key = "e8network") { // 解密函数
	$str = passport_key ( base64_decode ( $str ), $key );
	$tmp = '';
	for($i = 0; $i < strlen ( $str ); $i ++) {
		$md5 = $str [$i];
		$tmp .= $str [++ $i] ^ $md5;
	}
	return $tmp;
}

/**
 * 加密辅助函数
 */
function passport_key($str, $encrypt_key) {
	$encrypt_key = md5 ( $encrypt_key );
	$ctr = 0;
	$tmp = '';
	for($i = 0; $i < strlen ( $str ); $i ++) {
		$ctr = $ctr == strlen ( $encrypt_key ) ? 0 : $ctr;
		$tmp .= $str [$i] ^ $encrypt_key [$ctr ++];
	}
	return $tmp;
}


/**
 * 判断字符串和密文是否一致
 *
 * @param string $val 真实值
 * @param string $mw 密文
 */
function compare($val,$mw) {
	$mw = passport_decrypt($mw);
	if ($val === $mw) return true;
	return false;
}

/** 
 * 字符串截取函数
 * 
 * @param String $string 待截取字符串
 * @param Integer $sublen 截取长度
 * @param Integer $start 开始位置
 * @param String $code 字符编码
 *
 **/
function subtitle($string, $sublen, $start = 0, $code = 'UTF-8') 
{ 
    if($code == 'UTF-8') 
    { 
        $pa = "/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|\xe0[\xa0-\xbf][\x80-\xbf]|[\xe1-\xef][\x80-\xbf][\x80-\xbf]|\xf0[\x90-\xbf][\x80-\xbf][\x80-\xbf]|[\xf1-\xf7][\x80-\xbf][\x80-\xbf][\x80-\xbf]/"; 
        preg_match_all($pa, $string, $t_string); 

        if(count($t_string[0]) - $start > $sublen) return join('', array_slice($t_string[0], $start, $sublen))."..."; 
        return join('', array_slice($t_string[0], $start, $sublen)); 
    } 
    else 
    { 
        $start = $start*2; 
        $sublen = $sublen*2; 
        $strlen = strlen($string); 
        $tmpstr = ''; 

        for($i=0; $i< $strlen; $i++) 
        { 
            if($i>=$start && $i< ($start+$sublen)) 
            { 
                if(ord(substr($string, $i, 1))>129) 
                { 
                    $tmpstr.= substr($string, $i, 2); 
                } 
                else 
                { 
                    $tmpstr.= substr($string, $i, 1); 
                } 
            } 
            if(ord(substr($string, $i, 1))>129) $i++; 
        } 
        if(strlen($tmpstr)< $strlen ) $tmpstr.= "..."; 
        return $tmpstr; 
    } 
}
?>