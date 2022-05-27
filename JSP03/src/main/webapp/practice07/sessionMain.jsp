<%@page import="java.util.Enumeration"%>
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
		getAttributeNames()로 세션의 이름들을 Enumeration 타입으로 받은다음
		세션이름과 세션값을 얻고 세션값이 sung과 같다면 웹브라우저에 성춘향님 안녕하세요 출력하기
		a 태그로 세션확인하는 버튼과 로그아웃버튼 만들기 
	 --%>
	
	<%
		Enumeration<String> e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			
			String sName = e.nextElement();
			String sValue = session.getAttribute(sName).toString();
			
			if(sValue.equals("sung")){
				out.print("<h1>성춘향님 안녕하세요~!!!</h1>");
			}
			
		}
	
	%>
	
	<a href="sessionTest.jsp">세션 확인</a><br><br>
	
	<a href="sessionLogout.jsp">로그아웃</a>
	
	
</body>
</html>




