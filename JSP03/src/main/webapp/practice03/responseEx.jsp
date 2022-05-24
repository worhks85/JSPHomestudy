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
		폼에서 넘어온 데이터 받기 
		이름이 홍길동과 같다면 sendRedirect 로 OK.jsp 로 
		다르다면 sendRedirect 로 NG.jsp로 이동 요청하기
	 --%>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String name = request.getParameter("name");
		
		if(name.equals("홍길동")){
			response.sendRedirect("OK.jsp");
		}else{
			response.sendRedirect("NG.jsp");
		}
		
	%>
</body>
</html>