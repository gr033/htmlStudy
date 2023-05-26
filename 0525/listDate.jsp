<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.ScheduleDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String date = request.getParameter("date");
	ScheduleDAO dao = new ScheduleDAO();
	ArrayList<String> list = dao.listDate(date);
	Gson gson = new Gson();
	out.print(gson.toJson(list));
%>