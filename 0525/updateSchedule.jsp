<%@page import="com.sist.dao.ScheduleDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String date = request.getParameter("str");
	String content = request.getParameter("content");
	ScheduleDAO dao = new ScheduleDAO();
	int re = dao.updateSchedule(date, content);
	Gson gson = new Gson();
	String output = gson.toJson(re);
	out.print(re);
%>