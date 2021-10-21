<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>makeCookie<hr>  <!-- 이 페이지에선 쿠키 생성만 한다. 그리고 창닫기 -->
	<%
		Cookie cook = new Cookie("myCookie","myCookie");
		cook.setMaxAge(5);//하루를 초로 계산해서 넣자
		response.addCookie(cook);
	%>
	쿠키가 생성되었습니다
	<script type="text/javascript">
		//window.close()
		location.href='pop_close.jsp'
	</script>
</body>
</html>



