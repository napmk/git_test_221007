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
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if((id.equals("tiger"))&&(pw.equals("12345"))){
			Cookie cookie = new Cookie("memberId", id);
			cookie.setMaxAge(600);//초단위
			response.addCookie(cookie);// 클라이언트 pc로 전송
			out.println(id + "님 로그인 성공!");	
		}else{
				out.println("로그인실패.");
			}
		
	%>
	<a href="cookieCheck.jsp">쿠키 정보 확인</a>
</body>
</html>