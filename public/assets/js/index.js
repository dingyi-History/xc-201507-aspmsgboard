//ajax����û����Ƿ��ظ���js�ж��û����Ƿ�Ϸ�
function checkname(str) {
	var otxt = document.getElementById("txtHint");
	var oinput = document.getElementById("uname");
	if (str == "") {
		otxt.innerHTML = "";
		return;
	}

	if (str.length < 3) {
		otxt.innerHTML = "�û�����������3λ";
		otxt.style.color = "red";
		oinput.style.borderColor = "red";
		return;
	}

	if (window.XMLHttpRequest) { // ��� IE7+, Firefox, Chrome, Opera, Safari �Ĵ���
		XHR = new XMLHttpRequest();
	} else { // ��� IE6, IE5 �Ĵ���
		XHR = new ActiveXObject("Microsoft.XMLHTTP");
	}


	XHR.onreadystatechange = function() {

		if (XHR.readyState == 4 && XHR.status == 200) {

			if (XHR.responseText == 1) {
				otxt.innerHTML = "�Բ����û����ظ�";
				otxt.style.color = "red";
				oinput.style.borderColor = "red";

			} else {
				otxt.innerHTML = "�û�������";
				otxt.style.color = "green";
				oinput.style.borderColor = "yellowgreen";
			}
		}
	}
	XHR.open("GET", "../../controller/frontend/ajaxcheckname.asp?u=" + str, true);
	XHR.send();


	if (str.length >= 3) {
		otxt.innerHTML = "�û�������ʹ��";
		otxt.style.color = "green";
		oinput.style.borderColor = "yellowgreen";
		return;
	}

}




//�ͻ�����֤�����Ƿ�Ϸ�
function checkpwd(pwd, a) {
	var otxt = document.getElementById("txtHint");
	var oinput1 = document.getElementById("pwd1");
	var oinput2 = document.getElementById("pwd2");

	if (pwd.length < 3) {
		otxt.innerHTML = "���벻������3λ";
		otxt.style.color = "red";
		if (a == 1)
			oinput1.style.borderColor = "red";
		else
			oinput2.style.borderColor = "red";
		return;
	}


	if (pwd.length >= 3) {
		otxt.innerHTML = "�������";
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
		otxt.innerHTML="�������벻һ��";
		opwd1.style.borderColor="red";
		opwd2.style.borderColor="red";
		return false;
	}
	
	
}

//���������û����������Ƿ�Ϸ�
function logincheck(){
	
	var ouname = document.getElementById("uname");
	var opwd = document.getElementById("pwd");
	var ologintxt = document.getElementById("logintxt");
	
	if(ouname.value.length<3 || opwd.value.length<3)
	{
		ologintxt.innerHTML="�Բ����û���������λ������";
		ologintxt.style.color="red";
		ouname.style.borderColor="red";
		opwd.style.borderColor="red";
		return false;
	}
	
}


