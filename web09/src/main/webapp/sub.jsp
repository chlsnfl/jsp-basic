<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	String userid, userpw;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	userid = request.getParameter("userid");
	userpw = request.getParameter("userpw");
%>
	<h2>서브 페이지 입니다.</h2>
	<div><%=userid %></div>
	<div><%=userpw %></div>
</body>
</html>