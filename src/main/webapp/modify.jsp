<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="ModifyOk" method="post">
		ȸ������ ����<br/>
		��й�ȣ : <input type="password" name="pw"> <br/>
		��ȭ��ȣ 1 : <input type="text" name="phone1"> <br/> 
		��ȭ��ȣ 2 : <input type="text" name="phone2"> <br/> 
		��ȭ��ȣ 3 : <input type="text" name="phone3"> <br/>
		���� : <input type="text" name="gender"> <br/> 
		<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
		<input type="submit" value="����">
	</form>
</body>
</html>