<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
	<h2>���缭���� ������ ���</h2>
	<hr>
	<ul>
	<%
	try{
		String sql="select bookname from book";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost","c##madang","madang");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			String bookname = rs.getString(1);
			out.print("<li>"+rs.getString(1)+"</li>");
		}
		rs.close();
		stmt.close();
		conn.close();
	}catch(Exception e){
		System.out.println("���ܹ߻�:"+e.getMessage());
	}
	%>
	</ul>
</body>
</html>