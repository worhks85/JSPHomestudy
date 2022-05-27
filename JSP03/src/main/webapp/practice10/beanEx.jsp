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
		useBean 액션태그로 Member 빈객체 만들기
		setProperty 액션태그로 Member 빈객체에 데이터 넣기
		getProperty 액션태그로 Member 빈객체의 데이터를 얻어 웹브라우저에 출력하기 
	 --%>
	<jsp:useBean id="member" class="com.java.jsp.Member" scope="page" />
	
	<jsp:setProperty property="id" name="member" value="hong" />
	<jsp:setProperty property="pw" name="member" value="1234" />
	<jsp:setProperty property="name" name="member" value="홍길동" />
	<jsp:setProperty property="age" name="member" value="20" />
	
	아이디 : <jsp:getProperty property="id" name="member"/><br>
	비밀번호 : <jsp:getProperty property="pw" name="member"/><br>
	이름 : <jsp:getProperty property="name" name="member"/><br>
	나이 : <jsp:getProperty property="age" name="member"/><br>
	
	
</body>
</html>