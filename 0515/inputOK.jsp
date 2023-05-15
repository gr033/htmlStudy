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
	String addr = request.getParameter("addr");
	String email = request.getParameter("email");
	int age = Integer.parseInt(request.getParameter("age"));
	String pwd = request.getParameter("pwd");
	String []hobby = request.getParameterValues("hobby");
	String []subject = request.getParameterValues("subject");
	String gender = request.getParameter("gender");
	String job = request.getParameter("job");
	String food = request.getParameter("food");
	String self = request.getParameter("self");
%>
<h2>요청하신 데이터는 다음과 같습니다.</h2>
<hr>
이름: <%= name %><br>
주소: <%= addr %><br>
이메일: <%= email %><br>
나이: <%= age %><br>
암호: <%= pwd %><br>
취미: <%
for(String h:hobby){
	out.print(h+" ");
}
%><br>
수강과목: <%
for(String s:subject){
	out.print(s+" ");
}
%><br>
성별: <%= gender %><br>
직업: <%= job %><br>
좋아하는 음식: <%= food %><br>
자기소개: <%= self %><br>
</body>
</html>