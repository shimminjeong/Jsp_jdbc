<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@192.168.119.119:1521/dink11.dbsvr";
	String user = "scott";
	String password = "tiger";

	try {
		Class.forName(driver);
		out.println("jdbc driver �ε� ����");
		Connection conn = DriverManager.getConnection(url, user, password);
		out.println("����Ŭ ���� ����");
	} catch (ClassNotFoundException e) {
		out.println("jdbc driver �ε� ����");
	} catch (SQLException e) {
		out.println("����Ŭ ���� ����");
	}
	%>
</body>
</html>