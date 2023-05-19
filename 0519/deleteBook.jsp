<%@page import="com.sist.dao.bookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	bookDAO dao = new bookDAO();
	int bookid = Integer.parseInt(request.getParameter("bookid"));
	int re = dao.deleteBook(bookid);
	out.print(re);
%>