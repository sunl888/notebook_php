//数据验证
function check(){
	var inData = document.getElementsByTagName('input');
	var qq = inData[1];
	var phone = inData[2];	
	var address = inData[3];
	//匹配QQ号位4位以上数字
	reg = /^[1-9][0-9]{4,}$/;
	if(!reg.test(qq.value)){   	
		alert("请填写正确的QQ号!");
		qq.focus();
		return false;
	}
	//匹配手机号码
	reg = /^1[3|4|5|7|8]\d{9}$/;
	if(!reg.test(phone.value)){   	
		alert("请填写正确的手机号码!");
		phone.focus();
		return false;
	}
	//匹配住址因为2位以上文字和数字字母的组合
	reg = /^[\u4e00-\u9fa5_a-zA-Z0-9_]{2,30}$/;     
	if(!reg.test(address.value)){   	
		alert("现住址是2~30位中文,数字,字母,或下划线的组合!");
		address.focus();
		return false;
	}
	return true;
}