<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	double num = Math.random();
	if(num>0.95){
		out.println("축하합니다. 당첨되셨습니다!" + num);
	}else{
		out.println("실패입니다. 다시 도전하세용" + num);
	}
%>

</body>
</html>