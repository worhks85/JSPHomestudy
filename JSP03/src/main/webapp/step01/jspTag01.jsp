<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- 스크립트릿(scriptlet) 알아보기 --%>
	
	<%
		for(int i = 1; i <= 10; i++){
			if(i % 2 == 1){
				out.print(i + "&nbsp;");
				// out : jsp가 생성하는 결과를 출력할때 사용되는 출력스트림 내장객체
			}
		}
	%>
	
	<%--
		<% %> : 이 안에는 자바에서 쓰는 모든것을 
				사용할 수 있는 자바의 영역이다.
				자바의 기능을 가지고 여러가지 작업을 할 수 있다.
	 --%>
	
	<%
		for(int i = 0; i < 10; i++){
			
	%>
		
		<p>안녕하세요</p>
	
	<%
		}
	%>
	
</body>
</html>





