<?php
/**
 * 格式化打印函数，用于格式化打印数组信息
 * 调试使用
 *
 * @param unknown $con
 * @author webdd
 */
function p($con) {
	echo "<pre>";
	var_dump ( $con );
	die ();
}

/**
 * 根据时间参数，计算距离现在过了多长时间
 *
 * @param Integer $time 时间戳
 * @return String $timeStr 距离现在多长时间的字符串
 * @author webdd
 */
function timeToNow($time) {
	$now = time ();
	$old = $time;
	$date = floor ( ($now - $old) / 86400 );
	$hour = floor ( ($now - $old) % 86400 / 3600 );
	$minute = floor ( ($now - $old) % 86400 % 3600 / 60 );
	$second = floor ( ($now - $old) % 86400 % 60 );
	if ($date != 0) {
		return $date . '天以前';
	} else if ($hour != 0) {
		return $hour . '小时以前';
	} else if ($minute != 0) {
		return $minute . '分钟以前';
	} else {
		return $second . '秒以前';
	}
}
/**
 * 格式化时间戳方法
 * @param type $arr
 * @param type $length
 */
    function formatTime($arr){
        $i = 0;
         while($arr[$i]['id']){
             //$arr[$i]['addtime'] = date("Y-m-d H:i:s",$arr[$i]['addtime']);
             $arr[$i]['addtime'] = timeToNow( $arr[$i]['addtime'] );
             $i++;
         }
         return $arr;
    }
    function Fdate($arr){
        
       $arr['regtime'] = date("Y-m-d",$arr['regtime']);
       return $arr;
    }
    /**
     * 2016-04-18下午18时11分48秒
     * 格式化时间
     */
    function Ftime($arr){
        $i = 0;
        while($arr[$i]['id']){
            $a = date("Y-m-d-H-i-s",$arr[$i]['addtime']);
            
            $d = explode("-",$a);
            if($d[3]>=0 && $d[3]<=4)
                    $x = '凌晨';
            else if($d[3]>=5 && $d[3]<=8)
                    $x = '早上';
            else if($d[3]>=9 && $d[3]<=11)
                    $x = '上午';
            else if($d[3]>=12 && $d[3]<=13)
                    $x = '中午';
            else if($d[3]>=14 && $d[3]<=18)
                    $x = '下午';
            else if($d[3]>=19 && $d[3]<=23)
                    $x = '晚上';
            $arr[$i]['addtime'] = $d[0].'-'.$d[1].'-'.$d[2].' '.$x.' '.$d[3].'时'.$d[4].'分'.$d[5].'秒';
            $i++;
        }
        return $arr;
    }
?>