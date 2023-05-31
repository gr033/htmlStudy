<%@page import="com.thoughtworks.xstream.XStream"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.deptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.deptDAO"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	deptDAO dao = new deptDAO();	
	ArrayList<deptVO> list = dao.findAll();
	String data = "";
	XStream stream = new XStream();
	data = stream.toXML(list);
	out.print(data); 
%>