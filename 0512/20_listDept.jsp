<%@page import="db.ConnectionProvider"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
<h2>�μ��� ��ġ</h2>
<hr>
	<table border="1">
	<tr>
	<th>�μ���ȣ</th>
	<th>�μ���</th>
	<th>�μ���ġ</th>
	</tr>
	<%
	try{
		String sql="select * from dept";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost","c##madang","madang");
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()){
			String dno = rs.getString(1);
			String dname = rs.getString(2);
			String dloc = rs.getString(3);
			out.print("<tr>");
			out.print("<td>"+dno+"</td>");
			out.print("<td>"+dname+"</td>");
			out.print("<td>"+dloc+"</td>");
			out.print("</tr>");
		}
		rs.close();
		stmt.close();
		conn.close();
	}catch(Exception e){
		out.print("���ܹ߻�:"+e.getMessage());
	}
	%>
	</table>
</body>
</html>