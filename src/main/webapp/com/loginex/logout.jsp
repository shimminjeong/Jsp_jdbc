<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그아웃</h1>
<% session.invalidate(); %>

<a href="join.jsp">회원가입</a>
<a href="login.jsp">로그인</a>
	
</body>
</html>