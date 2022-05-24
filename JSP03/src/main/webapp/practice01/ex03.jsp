<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 선언문으로 1 ~ 10까지의 정수 중 하나를 얻는 메소드 만들기 --%>
	<%!
		public int randomSu(){
			int su = (int)(Math.random()*10) + 1;
			return su;
		}
	%>
	
	<%-- 스크립트릿으로 메소드 호출하여 웹브라우저에 오늘의 숫자 출력하기  --%>
	
	<%
		int myNumber = randomSu();
		out.print("<h1>오늘의 숫자 : " + myNumber + " 입니다.</h1>");
	%>
	
</body>
</html>