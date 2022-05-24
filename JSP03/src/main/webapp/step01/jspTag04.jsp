<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--
	<%@ %> : 지시자
	JSP 페이지의 전체적인 속성을 지정할 때 사용한다.
	page, include, taglib 가 있다.
	page : 해당 페이지의 전체적인 속성을 지정
	include : 별도의 페이지를 현재 페이지에 삽입
	taglib : 태그 라이브러리의 태그사용 (jstl을 사용하기 위해 지정) 
 --%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int[] array = {1, 2, 3, 4, 5};
	
	out.print(Arrays.toString(array));
	
%>

<h3>japTag04.jsp 페이지 입니다.</h3>

<%@ include file="include.jsp" %>
<%-- 현재의 문서에 다른문서, 즉 다른 파일의 내용을 포함시켜 출력하는 것을 말한다. --%>

<h1>다시 japTag04.jsp 페이지 입니다.</h1>

</body>
</html>






