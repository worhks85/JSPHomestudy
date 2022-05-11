<%@page import="com.jsp.members.membersDAO"%>
<%@page import="java.sql.Timestamp"%>
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

<%--
	프로퍼티가 많을 경우에는 jsp:setProperty 액션태그에 property 속성값을 * 로 해주면
	폼으로부터 넘어오는 파라미터의 값들이 프로퍼티 속성의 값으로 셋팅된다.
	주의사항 : 폼에서 넘어오는 데이터의 이름과 프로퍼티의 이름이 일치해야 한다.
 --%>
 
 <%
 	dto.setRegDate(new Timestamp(System.currentTimeMillis()));
 	System.out.println(dto.getAddress());
 	System.out.println(dto.getEmail());
 	System.out.println(dto.getId());
 	System.out.println(dto.getName());
 	System.out.println(dto.getPw());
 	System.out.println(dto.getRegDate());
 	membersDAO dao = membersDAO.getInstance();
 	if(dao.confirmID(dto.getId()) == 1 ){
 		// 아이디를 체크해서 같으 아이디가 있다면
 		%>
 		<script>
 		alert('아이디가 중복됩니다.');
 		history.back();
 		</script>
 <%
 		
 	}else {
 	//아이디가 없다면	
 	if (dao.insertMember(dto) == 1){
 		//정상적으로 DB에 데이터가 들어갔다면
 	
 %>
 	<script>
 	alert('회원 가입이 완료되었습니다.');
 	window.location = "login.jsp";
 	</script>
<%
	}else{
%>
	<script>
	alert('회원 가입에 실패 했습니다.')
	window.location= "join.jsp";
	</script>
<%
	}
}
%>


</body>
</html>