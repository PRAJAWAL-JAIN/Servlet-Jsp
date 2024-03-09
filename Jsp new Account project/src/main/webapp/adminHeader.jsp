<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<marquee behavior="alternate">
		<h1 style="color: white; text-shadow: -4px -4px 3px skyblue;">*Infoviaan
			Technologies*</h1>
	</marquee>
	<%
	if (session.getAttribute("firstName") != null) {
	%>
	<a style='color: white' href="adminHome.jsp">Home</a> |
	<a style='color: white' href="logout.jsp">Logout</a>
	<%
	} else {
	String Path = request.getRequestURI();
	boolean isLoginPage = Path.contains("LoginPage.jsp");
	%>
	<p align="center">
		<%
		if (!isLoginPage) {
		%>
		<a style='color: white' href="adminLogin.jsp">Login</a> |
		<%
		}
		%>
		<a style='color: white' href="signUp.jsp">Sign up</a>
	</p>
	<%
	}
	%>
	<hr>
</body>
</html>