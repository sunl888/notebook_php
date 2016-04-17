//数据验证
function check(){
	var inData = document.getElementsByTagName('input');
	var Name = inData[1];
	var pwd = inData[2];
	var repwd = inData[3];

	// 匹配用户名为4到16位中文数字字母下划线的组合  ^[\u4e00-\u9fa5_a-zA-Z0-9_]{4,16}$
	reg = /^[\u4e00-\u9fa5_a-zA-Z0-9_]{4,16}$/;     
	if(!reg.test(Name.value)){   	
		alert("用户名是4~16位中文,数字,字母,或下划线的组合!");
		Name.focus();
		return false;
	}
	//匹配密码为6~16位数字,字母,下划线的组合
	reg = /^\w{6,16}$/;
	if(!reg.test(pwd.value)){   
		alert("密码是6~16位数字,字母,或下划线的组合!");
		pwd.focus();
		return false;
	}
	//判断两次密码的一致性
	if(pwd.value !== repwd.value){
		alert('两次密码不一致,请核对后再提交!');
		repwd.focus();
		return false;
	}
	return true;
}