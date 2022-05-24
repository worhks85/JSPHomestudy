<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
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
		Integer 타입의 ArrayList를 생성 후 중복수 없이 로또번호를 
		ArrayList에 넣어준 후 로또번호를 웹브라우저에 출력하기 
	 --%>
	
	<%
		ArrayList<Integer> lotto = new ArrayList<>();
		
		while(lotto.size() < 6){
			
			int number = (int)(Math.random() * 45) + 1;
			
			if(!lotto.contains(number)){
				lotto.add(number);
			}
		}
		
		// 리스트의 오름차순 정렬
		Collections.sort(lotto);
		
	%>
	
	<h1>로또 추첨 결과</h1>
	
	<%
		for(int num : lotto){ // 향상된 for문
			out.print("<b>" + num + "</b>&nbsp;");
			Thread.sleep(1000); // 프로그램 1초간 잠재운다.
			out.flush(); // 웹 브라우저의 출력 버퍼를 비우는 메소드
		}
	%>
	
</body>
</html>

