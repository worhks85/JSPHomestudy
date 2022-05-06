<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	function joinFormCheck()	{
		var id = document.joinForm.id.value;
		var pw = document.joinForm.pw.value;
		var pwcheck = document.joinForm.pwcheck.value;
		var name = document.joinForm.name.value;
		var email = document.joinForm.email.value;
		var address = document.joinForm.address.value;
		
		if ( id == null || id == "" ){
			alert('아이디는 필수사항 입니다.')
			document.joinForm.id.focus();
			return;
		}
		if (id.length <4 ){
			alert('아이디는 4글자 이상 이어아 합니다.')
			document.joinForm.id.focus();
			return;
		}
		if ( pw == null || pw == "" ){
			alert('비밀번호는 필수사항 입니다.')
			document.joinForm.pw.focus();
			return;
		}
		if ( pw != pwcheck){
			alert('비밀번호가 일치하지 않습니다.')
			document.joinForm.pw.focus();
			return;
		}
		if ( name == null || name == "" ){
			alert('이름은 필수사항 입니다.')
			document.joinForm.name.focus();
			return;
		}
		
		document.joinForm.submit();
		
	}
	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	회원가입 폼 만들기 (자바 스크립트로 유효성 검사 후 자바스크립트에서 joinCheck.jsp로 전송하기)
	(아이디 비밀번호 비밀번호확인 이름 이메일 주소
 --%>
 
 <form name = "joinForm" action ="joinCheck.jsp" method = "post">
 	아이디 : <input type = "text" name = "id" size =  "10" > <br>
 	비밀번호 : <input type = "password" name = "pw" size =  "10" > <br>
 	비밀번호 확인 : <input type = "password" name = "pwcheck" size =  "10" > <br>
 	이름 : <input type = "text" name = "name" size =  "10" > <br>
 	이메일 : <input type = "text" name = "email" size =  "20" > <br>
 	주소 : <input type = "text" name = "address" size =  "20" > <br>
 	<input type = "button" value="회원가입" onclick = "joinFormCheck()">
 
 
 </form>

</body>
</html>