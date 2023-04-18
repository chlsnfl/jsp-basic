<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	String userid, userage, useradd;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "form.jsp" method ="submit">
<ol>
	<li>이름 : 
	<input type = "text" name = "userId">
	</li>
	<li>나이 : 
	<input type = "text" name = "userAge">
	</li>
	<li>주소 : 
	<input type = "text" name = "userAdd">
	</li>
</ol>
</form>
<%
	userid = request.getParameter("userId");
	userage = request.getParameter("userAge");
	useradd = request.getParameter("userAdd");
	out.println("이름 : " + userid);
	out.println("나이 : " + userage);
	out.println("주소 : " + useradd);
%>


</body>
</html>