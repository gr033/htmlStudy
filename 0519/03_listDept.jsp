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
	String output = gson.toJson(list);
	out.print(output);
	
	/*
	String output="[";
	for(deptVO d:list){
		output += "{\"dno\":\""+d.getDno()+"\", \"dname\":\""+d.getDname()+"\", \"dloc\":\""+d.getDloc()+"\"},";
	}
	output = output.substring(0,output.length()-1);
	output += "]";
	out.print(output);
	*/
%>