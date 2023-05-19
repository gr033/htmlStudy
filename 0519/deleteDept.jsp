<%@page import="com.sist.dao.deptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	int dno = Integer.parseInt(request.getParameter("dno"));
	deptDAO dao = new deptDAO();
	int re = dao.deleteDept(dno);
	out.print(re);
%>