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
		1. 넘어온 데이터 받기
		2. regDate를 현재시간의 객체로 생성하기
		(id pw name email address)	
		3. MembersDTO 객체에 셋팅하기
		4. DAO 객체 생성 후 confirmID 메소드 호출 후에 members 테이블에
		   같은 아이디가 없다면 insertMember 메소드 호출해서 데이터 넣기
		   결과 값을 받아 회원가입이 되었다면 축하메세지 출력하고 login.jsp로 보내기
		   회원가입이 되지않았다면 회원가입 실패했다고 출력하고 join.jsp로 보내기
	 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id = "dto" class ="com.jsp.members.membersDTO" />
<jsp:setProperty property="*" name="dto"/>

</body>
</html>