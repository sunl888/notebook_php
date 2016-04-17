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
	// echo "天" . $date . "时" . $hour . "分" . $minute . '秒' . $second . '<br />';
	// $timeArr = array('day'=>$date,'hour'=>$hour,'minute'=>$minute,'second'=>$second);
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

?>