<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="joinOk.jsp" method="post">
		이름 : <input type="text" name="name"> <br/>
		아이디 : <input type="text" name="id"> <br/> 
		비밀번호 : <input type="password" name="pw"> <br/>
		전화번호 1 : <input type="text" name="phone1"> <br/> 
		전화번호 2 : <input type="text" name="phone2"> <br/> 
		전화번호 3 : <input type="text" name="phone3"> <br/>
		성별 : <input type="text" name="gender"> <br/> 
		<input type="submit" value="회원가입">
	</form>
</body>
</html>