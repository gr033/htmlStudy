<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.deptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.deptDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	deptDAO dao = new deptDAO();	
	ArrayList<deptVO> list = dao.findAll();
	Gson gson = new Gson();
	String result = gson.toJson(list);
	out.print(result);
			
%>