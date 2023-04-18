<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    	String userid, userpwd, contextId, contextPwd;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	contextId = application.getInitParameter("userId");
	contextPwd = application.getInitParameter("userPwd");

	userid = request.getParameter("userId");
	userpwd = request.getParameter("userPwd");
	
	if(userid.equals(contextId) && userpwd.equals(contextPwd)){
		session.setAttribute("userid", userid);
		response.sendRedirect("welcome.jsp");
	}else{
%>
<script>
	alert("이메일 또는 비밀번호가 틀려용");
	location.href ="login.html";
</script>
<%
		//response.sendRedirect("login.html");
	}
%>


아이디<%=contextId %>, 비밀번호 <%=contextPwd %>
</body>
</html>