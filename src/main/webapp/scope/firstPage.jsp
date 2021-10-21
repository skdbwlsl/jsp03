<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>firstPage.jsp<br>
<hr>
<!-- 
	page : 현재 페이지에서만 유지되는 값
	request : 현재 페이지 또는 다음 페이지까지 유지되는 값
				단, request는 다음 페이지까지 전달하고자 하면 forward사용해야 한다.(우선 기억하자)
	session : 웹 브라우저가 살아있는 동안 유지된다.(우선 제일먼저 기억하자. 많이 쓴다)
	application : 서버가 살아있는 동안 유지된다. 
 -->
	<%
		pageContext.setAttribute("name", "page value");
		request.setAttribute("name", "request value");
		session.setAttribute("name", "session value");
		application.setAttribute("name", "application value");

//forward를 이용하면 first페이지가 아니 바로 다음 second페이지로 넘어간다
//request.getRequestDispatcher("SecondPage.jsp").forward(request,response);	
		//PrintWriter p = response.getWriter();
		//p.println("안녕하세요");
		%>

	name : ${name }<br>
	page : <%= pageContext.getAttribute("name")%>
			, ${pageScope.name }<br>
	request : <%= request.getAttribute("name")%>
			, ${requestScope.name }<br>
	session : <%= session.getAttribute("name")%>
			, ${sessionScope.name }<br>
	application: <%= application.getAttribute("name")%>
			, ${appicationScope.name }<hr>
	
	<a href = "secondPage.jsp">secondPage.jsp</a>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var = "se" value = "세션설정값입니다" scope = "session"/>
session : ${se }<br>

</body>
</html>