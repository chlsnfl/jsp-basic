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
	Cookie[] cookies = request.getCookies();

	for(int i=0; i<cookies.length; i++){
		String str = cookies[i].getName();
		String val = cookies[i].getValue();
		if(str.contains("cName")){
			out.println("다녀오셨군요, 반갑습니다.");
		}else{
			out.println("어서오세요. 첫 방문이시군요.");
		}
	}
%>

<a href ="delCookie.jsp">다시 오셨군용</a>

</body>
</html>