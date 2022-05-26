<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		int a = 100;
	%>
	
	<h1>include01 페이지 입니다.</h1>
	
	<%@ include file="include02.jsp" %>
	
	<h3>다시 include01 페이지 입니다.</h3>
	
	<%--
		include 지시자는 주로 조각난 코드를 삽입을 하고자 할때 사용된다.
		요청한 소스코드를 텍스트에 포함해서 하나로 인식해서 컴파일한다.
	 --%>
	
</body>

</html>







