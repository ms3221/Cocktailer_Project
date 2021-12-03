<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String pwd = request.getParameter("paramPwd").trim();
	String pwd_check = request.getParameter("paramPwdCheck").trim();

	int result = 1;
	
	if(pwd.equals(pwd_check)){		// 비밀번호 확인 => 비밀번호랑 일치하는 경우 (통과)
		result = 0;	
	}
	
	if(pwd.equals("")){
		result = 2;				// 일치하든 안 하든 비번이 null이면 인정 안해줄거임.
	}
	
	out.println(result);
	
%>