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
		넘어온 데이터를 받고
		아이디 : hong  비밀번호 : 1234 와 일치한다면
		받은 아이디로 쿠키를 생성한 후( new Cookie("id", id) ) 웹브라우저에 쿠키 탑재 후 
		리다이렉트로 cookieMain.jsp 로 보내기
		일치하지 않는다면 리다이렉트로 cookieLogin.html 로 보내기
	 --%>
	
	<%!
		String id, pw;
	%>
	
	<%
		id = request.getParameter("id");
		pw = request.getParameter("pw");
		
		if(id.equals("hong") && pw.equals("1234")){
			
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60*60);
			response.addCookie(cookie);
			response.sendRedirect("cookieMain.jsp");
			
		}else{
			response.sendRedirect("cookieLogin.html");
		}
		
	%>
	
	
</body>
</html>