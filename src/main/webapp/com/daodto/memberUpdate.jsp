<%@page import="com.daodto.MemberDTO"%>
<%@page import="com.daodto.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Member"%>
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
	String id = request.getParameter("id");
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO dto = memberDAO.memberId(id);
	
	%>
	<form action="memberUpdateResult.jsp" method="post">
		비밀번호 : <input type="password" name="pw" value= "<%=dto.getPw()%>"> <br/>
		이름 : <input type="text" name="name" value= "<%=dto.getName()%>"> <br/>
		전화번호 1 : <input type="text" name="phone1" value= "<%=dto.getPhone1()%>"> <br/> 
		전화번호 2 : <input type="text" name="phone2" value= "<%=dto.getPhone2()%>"> <br/> 
		전화번호 3 : <input type="text" name="phone3" value= "<%=dto.getPhone3()%>"> <br/>
		성별 : <input type="text" name="gender" value= "<%=dto.getGender()%>"> <br/> 
		<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
		<input type="submit" value="전송">
	</form>
</body>
</html>