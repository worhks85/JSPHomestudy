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
		표현식(expression) 알아보기
		JSP 페이지내에서 사용되는 변수의 값 또는 메소드 호출 등
		결과값을 출력하기 위해 사용된다.
		결과는 String 타입이며 세미콜론을 사용할 수 없다.
	 --%>
	
	<%!
		String id = "hong";
		String pw = "1234";
		
		public int add(int a, int b){
			return a + b;
		}
	%>
	
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
	100 + 200 : <%=add(100, 200) %>
	<%-- 표현식은 out.print(); 대체한다. --%>
		
</body>
</html>