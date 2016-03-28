<%@page import="com.estsoft.db.MySQLWebDBConnection" %>
<%@page import="com.estsoft.emaillist.dao.EmailListDAO"%>
<%@page import="com.estsoft.emaillist.vo.EmailListVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmailListVO vo = new EmailListVO();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	EmailListDAO dao = new EmailListDAO(new MySQLWebDBConnection());
	dao.insert(vo);	
	
	response.sendRedirect("/emaillist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>성공했습니다.</h1>
</body>
</html>