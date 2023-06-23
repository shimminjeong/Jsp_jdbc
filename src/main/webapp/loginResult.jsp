<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 로그인 성공</h1>
<%

String id = request.getParameter("id");
out.println(id+"님 환영합니다.");

%>
<br/>
<%-- <jsp:forward page="modify.html">회원정보수정</jsp:forward> --%>
<a href="login.html">로그인</a>
<a href="modify.jsp?id=<%= id %>">회원정보수정</a>
</body>
</html>