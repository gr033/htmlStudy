<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){
		let obj = {};
		let data = location.search;
		data = data.substr(1);
		console.log(data);
		let arr = data.split("&");
		console.log(arr);
		for(let i in arr){
			let row = arr[i].split("=");
			let key = row[0];
			let value = row[1];
			obj[key] = value;
		}
		console.log(obj);
		console.log(obj['no']);
		console.log(obj['qty']);
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
