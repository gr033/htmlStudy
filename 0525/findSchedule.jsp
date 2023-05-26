<%@page import="com.sist.vo.ScheduleVO"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.ScheduleDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ScheduleDAO dao = new ScheduleDAO();
	String date = request.getParameter("date");
	ArrayList<ScheduleVO> list = dao.findSchedule(date);
	Gson gon = new Gson();
	String output = gon.toJson(list);
	out.print(list);
%>