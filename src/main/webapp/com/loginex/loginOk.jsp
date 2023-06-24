<%@page import="com.loginex.MemberDTO"%>
<%@page import="com.loginex.MemberDAO"%>
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
	String pw = request.getParameter("pw");
	
	MemberDAO memberdao=new MemberDAO();
	MemberDTO dto=memberdao.memberId(id);
	
	if (dto.getPw().equals(pw)){
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		
		response.sendRedirect("main.jsp?id=" + id);
	} else if(dto == null) {
		response.sendRedirect("login.jsp");
	} else{
		response.sendRedirect("login.jsp");
	}
	%>
</body>
</html>