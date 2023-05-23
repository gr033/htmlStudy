<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.empVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.empDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	empDAO dao = new empDAO();
	int eno = Integer.parseInt(request.getParameter("eno"));
	empVO list = dao.findbyName(eno);
	Gson gson = new Gson();
	String output = gson.toJson(list);
	out.print(output);
%>