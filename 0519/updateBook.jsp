<%@page import="com.sist.vo.bookVO"%>
<%@page import="com.sist.dao.bookDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	bookDAO dao = new bookDAO();
	int bookid = Integer.parseInt(request.getParameter("bookid"));
	String bookname = request.getParameter("bookname");
	String publisher = request.getParameter("publisher");
	int price = Integer.parseInt(request.getParameter("price"));
	bookVO b = new bookVO(bookid, bookname, publisher, price);
	int re = dao.updateBook(b);
	out.print(re);
%>