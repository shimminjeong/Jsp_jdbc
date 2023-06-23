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
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@192.168.119.119:1521/dink11.dbsvr";
	String user = "scott";
	String password = "tiger";

	String newId = request.getParameter("id");
	String newPw = request.getParameter("password");
	String newName = request.getParameter("name");
	String newPhone = request.getParameter("phone");
	String query = "INSERT INTO MEMBER (ID, PW, NAME, PHONE) VALUES ('" + newId + "', '" + newPw + "', '" + newName + "', '"
			+ newPhone + "')";

	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(query);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	%>
<a href="memberSelect.jsp">회원조회</a>
</body>
</html>