<%@page import="com.sist.dao.deptDAO"%>
<%@page import="com.sist.vo.deptVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	int dno = Integer.parseInt(request.getParameter("dno"));
	String dname = request.getParameter("dname");
	String dloc = request.getParameter("dloc");
	deptVO d = new deptVO();
	d.setDno(dno);
	d.setDname(dname);
	d.setDloc(dloc);
	deptDAO dao = new deptDAO();
	int re = dao.insertDept(d);
	out.print(re);
%>
