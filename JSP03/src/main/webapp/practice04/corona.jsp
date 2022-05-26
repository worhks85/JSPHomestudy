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
		넘어온 데이터 받기
		예방접종 3차까지 맞았다면 여행가능하다고 웹브라우저에 출력하기 
	 --%>
	
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String nation = request.getParameter("nation");
		String check = request.getParameter("coronaCheck");
		
		if(check.equals("1") || check.equals("2")){
			out.print("<h2>" + name + "님 " + nation + "여행은 3차까지 맞으셔야 가능합니다.</h2>");
			
		}else if(check.equals("3")){
			out.print("<h2>" + name + "님 " + nation + "여행 가능합니다.</h2>");
			out.print("<a href=\"#\">여행 예약하기</a>");
		}
		
	%>
	
</body>
</html>