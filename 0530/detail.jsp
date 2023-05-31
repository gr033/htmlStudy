<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../sist.js"></script>
<script type="text/javascript">
	window.onload = function(){
		let no = getParameter("no");
		let qty = getParameter("qty");
		console.log(no);
		console.log(qty);
	}
</script>
</head>
<%
	String no = request.getParameter("no");
	String qty = request.getParameter("qty");
%>
no = <%=no %><br>
qty = <%=qty %><br>
<hr>
<body>
</body>
</html>
