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
		쿠키를 배열로 얻은다음 반복문을 통해서 쿠키값이 hong과 일치한다면
		홍길동님 안녕하세요 << 웹브라우저에 출력하기 
	 --%>
	
	<%
		Cookie[] cookies = request.getCookies();
		
		if(cookies != null){
			
			for(int i = 0; i < cookies.length; i++){
				
				String id = cookies[i].getValue();
				
				if(id.equals("hong")){
					
					out.print("<h1>홍길동님 안녕하세요~!!!</h1>");
					
				}
				
			}
			
		}
	
	%>
	
	<a href="cookieLogout.jsp">로그아웃</a>
	
	
	
</body>
</html>