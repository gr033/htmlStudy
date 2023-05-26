<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.dao.ScheduleDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ScheduleDAO dao = new ScheduleDAO();
	int no = Integer.parseInt(request.getParameter("no"));
	int re = dao.deleteSchedule(no);
	Gson gs = new Gson();
	String output = gs.toJson(re);
	out.print(output);
%>