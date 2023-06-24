<%@page import="com.daodto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.daodto.MemberDAO"%>
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
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberDTO> dtos = memberDAO.memberSelect();
		
		for(int i = 0; i < dtos.size();i++) {
			MemberDTO dto = dtos.get(i);

			String id = dto.getId();
			String pw = dto.getPw();
			String name = dto.getName();
			String phone = dto.getPhone1() + " - " + dto.getPhone2() + " - " + dto.getPhone3();
			String gender = dto.getGender();
			
			out.println("아이디: " + id + ", 비밀번호: " + pw + ", 이름: " + name + " 연락처: " + phone + ", 성별: " + gender + "<br/>");
		}
	%>
<form action="memberUpdate.jsp" method="post">
		<br/> 수정할 id를 입력하세요 <br/> 
		ID : <input type="text" name="id"> 
		<input type="submit" value="전송">
	</form>
</body>
</html>