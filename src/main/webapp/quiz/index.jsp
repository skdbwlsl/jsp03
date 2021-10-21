<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<hr>
	<h1>안녕하세요!</h1>
	<%
		boolean chk = true;
		Cookie[] cooks = request.getCookies();   //쿠키만들기
		for(Cookie c : cooks){
			if(c.getName().equals("myCookie")){  //비교하고싶은 값 아무거나 써도 된다
				chk = false;
			}
		}
	%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:if test="<%=chk %>">
	<script>
	window.open("popup.jsp","","width=300,height=200,top=500,left=500")
	</script>
</c:if>
</body>
</html>



