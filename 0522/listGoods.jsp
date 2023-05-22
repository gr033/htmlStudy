<%@page import="com.google.gson.Gson"%>
<%@page import="com.sist.vo.goodsVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.goodsDAO"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//모든 상품목록을 조회하여 JSON으로 응답하도록 문서를 완성
	goodsDAO dao = new goodsDAO();
	ArrayList<goodsVO> list = dao.listGoods();
	Gson gson = new Gson();
	String output = gson.toJson(list);
	out.print(output);
%>