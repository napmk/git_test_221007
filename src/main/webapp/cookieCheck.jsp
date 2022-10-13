<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	<h3>모든 세션 정보</h3>
	<hr>
	<%		
		
		Cookie[] cookies = request.getCookies();
		for(int i=0;i<cookies.length;i++){
			String id = cookies[i].getValue();
			out.println(id + "<br>");
		}
	
	
	%>
</body>
</html>