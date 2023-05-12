<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.ConnectionProvider"%>
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
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String sql = "select * from book where bookid in (select " 
			 +"bookid from orders where custid in"
			 +"(select custid from customer where name=?))";
	
	out.println("<h2>"+name+"님이 주문하신 도서목록</h2>");
	out.println("<hr>");
	out.println("<table border=\"1\">");
	out.println("<tr>");
	out.println("<td>도서번호</td>");
	out.println("<td>도서명</td>");
	out.println("<td>출판사</td>");	
	out.println("<td>가격</td>");	
	out.println("</tr>");
	try{
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			out.print("<tr>");
			out.print("<td>"+rs.getString(1)+"</td>");
			out.print("<td>"+rs.getString(2)+"</td>");
			out.print("<td>"+rs.getString(3)+"</td>");
			out.print("<td>"+rs.getString(4)+"</td>");
			out.print("</tr>");
		}
		ConnectionProvider.close(rs, pstmt, conn);
	}catch(Exception e){
		out.println("예외발생:"+e.getMessage());
	}
%>
</table>
</body>
</html>