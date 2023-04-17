<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 이건 html 주석입니당 -->
<%-- 이건 jsp 주석 입니댕 --%>

	<h1>Hello World@@</h1>
<%
	int i = 0;
	while(true){
		i++;
		out.println("2 x " + i + "=" + (2*i));
		out.println("<br>");
%>

====================================<br>

<%
	if(i>=9) break;
	}
%>
</body>
</html>