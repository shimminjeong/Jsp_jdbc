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
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@192.168.119.119:1521/dink11.dbsvr";
	String user = "scott";
	String password = "tiger";

	String query = "SELECT * FROM MEMBER";

	try {
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, password);
		Statement stmt = conn.createStatement();
		ResultSet resultset=stmt.executeQuery(query);
		
		while(resultset.next()){
			String id = resultset.getString("id");
            String pw = resultset.getString("pw");
            String name = resultset.getString("name");
            String phone = resultset.getString("phone");
            
            out.println("ID: " + id + ", Password: " + pw + ", Name: " + name + ", Phone: " + phone + "<br>");
		}
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	%>
<a href="memberlogin.html">회원등록</a>
</body>
</html>