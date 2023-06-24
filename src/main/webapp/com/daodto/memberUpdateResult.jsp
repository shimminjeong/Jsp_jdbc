<%@page import="com.daodto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.daodto.MemberDAO"%>
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
	String id =request.getParameter("id");
	String pw =request.getParameter("pw");
	String name =request.getParameter("name");
	String phone1 =request.getParameter("phone1");
	String phone2 =request.getParameter("phone2");
	String phone3 =request.getParameter("phone3");
	String gender =request.getParameter("gender");
	
	MemberDAO memberDAO = new MemberDAO();
	MemberDTO dto=new MemberDTO(id,pw,name,phone1,phone2,phone3,gender);
	memberDAO.memberUpdate(dto);
	%>
	
	아이디: <%=dto.getId()%><br/>
	비밀번호: <%=dto.getPw()%><br/>
    이름: <%=dto.getName()%><br/>
    전화번호 1: <%=dto.getPhone1()%><br/>
    전화번호 2: <%=dto.getPhone2()%><br/>
    전화번호 3: <%=dto.getPhone3()%><br/>
    성별: <%=dto.getGender()%><br/>
	
</body>

<a href="memberSelect.jsp">회원조회</a>
</html>