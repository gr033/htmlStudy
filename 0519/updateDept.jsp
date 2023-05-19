<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.deptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.deptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	deptDAO dao = new deptDAO();
	int dno = Integer.parseInt(request.getParameter("dno"));
	String dname = request.getParameter("dname");
	String dloc = request.getParameter("dloc");
	deptVO d = new deptVO(dno, dname, dloc);
	int re = dao.updateDept(d);
	out.print(re);
%>