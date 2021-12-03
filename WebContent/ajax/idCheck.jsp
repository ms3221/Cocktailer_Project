<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.user.model.UserDAO"%>

<%

	String user_id = request.getParameter("paramId").trim();
	
	int res;
	
	UserDAO dao = UserDAO.getInstance();
	
	res = dao.checkUserId(user_id);		// 아이디 이미 잇으면 1, 없으면 0 반환
	
	if(user_id.equals("")){				// 아이디 값이 null이엇으면 2로 바꾸기
		res = 2;
	}
	
	out.println(res);
	
%>