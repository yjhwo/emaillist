<%@page import="com.mysql.jdbc.MySQLConnection"%>
<%@page import="com.estsoft.db.MySQLWebDBConnection" %>
<%@page import="com.estsoft.emaillist.dao.EmailListDAO"%>
<%@page import="com.estsoft.emaillist.vo.EmailListVO"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	EmailListDAO dao = new EmailListDAO(new MySQLWebDBConnection());
	List<EmailListVO> list = dao.getList();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>메일 리스트에 가입되었습니다.</h1>
	<p>입력한 정보 내역입니다.</p>
	<!-- 메일정보 리스트 -->
	<%-- list에서 하나씩 빼서 테이블을 채운다--%>
	<%
		for(EmailListVO vo : list){
	%>
	<table border="1" cellpadding="5" cellspacing="2">
		<tr>
			<td align=right>First name: </td>
			<td><%= vo.getFirstName() %></td>
		</tr>
		<tr>
			<td align=right width="110">Last name: </td>
			<td width="110"><%= vo.getLastName() %></td>
		</tr>
		<tr>
			<td align=right>Email address: </td>
			<td><%= vo.getEmail() %></td>
		</tr>
	</table>
	<br>
	<%
		}
	%>
	<p>
		<a href="form.jsp">추가메일 등록</a>
	</p>
	<br>
</body>
</html>