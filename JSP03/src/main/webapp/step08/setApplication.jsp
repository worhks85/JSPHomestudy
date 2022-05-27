<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%--
		application 객체는 JSP 기본 내장객체로 페이지에서 따로 선언하지 않아도 사용 가능하다.
		자신이 속한 웹어플리케이션 범위안의 모든 JSP 범위에서 공유된다.
	 --%>
	
	<%
		application.setAttribute("name", "홍길동");
		application.setAttribute("age", 20);
	%>
	
	<h3>어플리케이션이 저장</h3>
	
	<a href="getApplication.jsp">어플리케이션 데이터 얻기</a>
	
</body>
</html>