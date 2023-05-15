<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	span{
		color:pink;
		background:yellow;
		}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	out.print("반갑습니다 <span>"+name+"</span>님!");
	out.print("<hr>");
%>
</body>
</html>