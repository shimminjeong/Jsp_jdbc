<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=(String)session.getAttribute("id")%> 님 환영합니다</h1> 
	<a href="modify.jsp">회원정보수정</a>
	<a href="logout.jsp">로그아웃</a>
</body>
</html>