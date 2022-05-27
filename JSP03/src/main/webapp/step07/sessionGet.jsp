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
	
	<%
		Object obj1 = session.getAttribute("sessionName");
		// 세션이름으로 value를 얻을 수 있다.
		String sessionValue = (String)obj1;
		
		out.print("sessionName의 값 : " + sessionValue + "<br>");
		
		Object obj2 = session.getAttribute("sessionNumber");
		int sessionNumberValue = (Integer)obj2;
		
		out.print("sessionNumber의 값 : " + sessionNumberValue + "<br>");
		
		out.print("----------------------------<br>");
		
		String sName;
		String sValue;
		
		Enumeration<String> e = session.getAttributeNames();
		// 모든 세션 이름을 Enumeration<String> 타입으로 반환
		
		while(e.hasMoreElements()){
			
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
			
		}
		out.print("----------------------------<br>");
		
		String sessionID = session.getId();
		// 한브라우저당 고유한 아이디가 생성이 된다.
		// 브라우저별로 생성되어진 세션을 구분할 수 있다.
		
		out.print("세션 아이디 : " + sessionID + "<br>");
		
		int sessionInter = session.getMaxInactiveInterval();
		// 세션의 유효시간 (기본30분)
		
		out.print("세션의 유효시간 : " + sessionInter + "<br>");
		
		out.print("----------------------------<br>");
		
		session.removeAttribute("sessionName");
		// 세션삭제 : removeAttribute("세션이름");
		
		e = session.getAttributeNames();
		
		while(e.hasMoreElements()){
			
			sName = e.nextElement();
			sValue = session.getAttribute(sName).toString();
			
			out.print("세션 이름 : " + sName + "<br>");
			out.print("세션 값 : " + sValue + "<br>");
			
		}
		out.print("----------------------------<br>");
		
		session.invalidate();
		// 세션의 모든 데이터를 삭제한다.
		
		if(request.isRequestedSessionIdValid()){
			// 유효한 세션이 있으면 true 반환 없으면 false 반환
			out.print("유효한 세션이 있음");
		}else{
			out.print("세션이 없음");
		}
		
		
	%>
	
	
</body>
</html>