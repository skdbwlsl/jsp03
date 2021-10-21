<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>index.jsp<hr>
<!-- 
	session : 서버에서 관리하는 값
	cookie : 클라이언트가 관리하는 값
 -->
	<h1>CARE_LAB</h1>	
	<h3>어서오세요~!</h3>
	<%
		boolean bool =  false;
		Cookie[] cookieArr = request.getCookies(); //사용자가 접속한 모든 쿠키값에 접속하겠다
		for(Cookie c : cookieArr){
			out.print("name : " + c.getName()+":");
			out.print("value :" + c.getValue()+ "<br>");
			if(c.getName().equals("testCookie")){
				bool = true;
			}
		}
		/*
		int[] arr = {1,2,3,4,5};
		for(int a : arr){
			out.print(a+"<br>");
		}
		*/
		/*
		for(int i = 0; i<cookieArr.length;i++){
			out.print("name : " + cookieArr[i].getName()+":");
			out.print("value :" + cookieArr[i].getValue()+ "<br>");
		}
		*/
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5);
		response.addCookie(cookie);  //만든 쿠키값을 클라이언트에게 보내기
	%>	
	<%if(bool==false){%>
	<script type="text/javascript">
			window.open("popup.jsp","","width=300,height = 200,top=500,Sleft=500");
	</script>
	<%} %>
</body>
</html>