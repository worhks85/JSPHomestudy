<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	String name, studentID, tel, area;
	String[] circle;
%>

<%
	request.setCharacterEncoding("UTF-8");

	name = request.getParameter("name");
	studentID = request.getParameter("studentID");
	tel = request.getParameter("tel");
	area = request.getParameter("area");
	
	circle = request.getParameterValues("circle");
	
%>


<h2>form에서 넘어온 데이터</h2>

이름 : <%=name %><br>
학번 : <%=studentID %><br>
전화번호 : <%=tel %><br>
사는지역 : <%=area %><br>

동아리 : <%=Arrays.toString(circle) %>

</body>
</html>














