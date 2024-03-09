<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/wp2939910.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

input.largerCheckbox {
	width: 13px;
	height: 13px;
	margin-top: 4px;
	margin-bottom: 4px;
	float: left;
}
</style>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<center>
		<h4 style='color: white'>~Login Page~</h4>

		<%
		String error = (String) request.getAttribute("error");
		if (error != null) {
		%>
		<h1 style='color: red'><%=error%></h1>
		<%
		}
		%>
		<form action="accountLogin.jsp">
			<table border="3" align="center" width="250">
				<tr>
					<td style='color: white'>Login Id:</td>
					<td><input type="text" name="userId" value=""
						required="required"></td>
				</tr>
				<tr>
					<td style='color: white'>Password:</td>
					<td><input type="password" name="password" id="click"
						required="required"> <input type="checkbox"
						class="largerCheckbox" onclick="myClick()" /> <span
						style="color: white; font-size: 14px; padding-top: 4px;">Show
							Password</span></td>
				</tr>
			</table>
			<p align="center">
				<button type="submit">Login</button>
			</p>
		</form>
	</center>
	<script>
		function myClick() {
			var x = document.getElementById("click");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>
</body>
</html>