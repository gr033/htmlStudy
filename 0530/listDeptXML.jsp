<%@page import="com.sist.vo.deptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.deptDAO"%>
<%@ page language="java" contentType="application/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	deptDAO dao = new deptDAO();
	ArrayList<deptVO> list = dao.findAll();
	String data = "";
	data += "<dept_list>";
	for(deptVO v: list){
		data += "<dept>";
		data += "<dno>"+v.getDno()+"</dno>";
		data += "<dname>"+v.getDname()+"</dname>";
		data += "<dloc>"+v.getDloc()+"</dloc>";
		data += "</dept>";
	}
	data += "</dept_list>";
	out.print(data);
%>