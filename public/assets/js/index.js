//ajax检测用户名是否重复，js判断用户名是否合法
function checkname(str) {
	var otxt = document.getElementById("txtHint");
	var oinput = document.getElementById("uname");
	if (str == "") {
		otxt.innerHTML = "";
		return;
	}

	if (str.length < 3) {
		otxt.innerHTML = "用户名不能少于3位";
		otxt.style.color = "red";
		oinput.style.borderColor = "red";
		return;
	}

	if (window.XMLHttpRequest) { // 针对 IE7+, Firefox, Chrome, Opera, Safari 的代码
		XHR = new XMLHttpRequest();
	} else { // 针对 IE6, IE5 的代码
		XHR = new ActiveXObject("Microsoft.XMLHTTP");
	}


	XHR.onreadystatechange = function() {

		if (XHR.readyState == 4 && XHR.status == 200) {

			if (XHR.responseText == 1) {
				otxt.innerHTML = "对不起，用户名重复";
				otxt.style.color = "red";
				oinput.style.borderColor = "red";

			} else {
				otxt.innerHTML = "用户名可用";
				otxt.style.color = "green";
				oinput.style.borderColor = "yellowgreen";
			}
		}
	}
	XHR.open("GET", "../../controller/frontend/ajaxcheckname.asp?u=" + str, true);
	XHR.send();


	if (str.length >= 3) {
		otxt.innerHTML = "用户名可以使用";
		otxt.style.color = "green";
		oinput.style.borderColor = "yellowgreen";
		return;
	}

}




//客户端验证密码是否合法
function checkpwd(pwd, a) {
	var otxt = document.getElementById("txtHint");
	var oinput1 = document.getElementById("pwd1");
	var oinput2 = document.getElementById("pwd2");

	if (pwd.length < 3) {
		otxt.innerHTML = "密码不能少于3位";
		otxt.style.color = "red";
		if (a == 1)
			oinput1.style.borderColor = "red";
		else
			oinput2.style.borderColor = "red";
		return;
	}


	if (pwd.length >= 3) {
		otxt.innerHTML = "密码可用";
		otxt.style.color = "green";
		if (a == 1)
			oinput1.style.borderColor = "yellowgreen";
		else
			oinput2.style.borderColor = "yellowgreen";
		return;
	}
}






function check(){
	
	var ouname = document.getElementById("uname");
	var opwd1 = document.getElementById("pwd1");
	var opwd2 = document.getElementById("pwd2");
	var otxt = document.getElementById("txtHint");
	
	if(opwd1.value!=opwd2.value)
	{
		otxt.innerHTML="两次密码不一致";
		opwd1.style.borderColor="red";
		opwd2.style.borderColor="red";
		return false;
	}
	
	
}

//检测输入的用户名和密码是否合法
function logincheck(){
	
	var ouname = document.getElementById("uname");
	var opwd = document.getElementById("pwd");
	var ologintxt = document.getElementById("logintxt");
	
	if(ouname.value.length<3 || opwd.value.length<3)
	{
		ologintxt.innerHTML="对不起，用户名或密码位数不够";
		ologintxt.style.color="red";
		ouname.style.borderColor="red";
		opwd.style.borderColor="red";
		return false;
	}
	
}


