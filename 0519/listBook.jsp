<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.bookDAO"%>
<%@page import="com.sist.vo.bookVO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	bookDAO dao = new bookDAO();
	ArrayList<bookVO> list = dao.findBook();
	Gson gson = new Gson();
	String output = gson.toJson(list);
	out.print(output);
%>