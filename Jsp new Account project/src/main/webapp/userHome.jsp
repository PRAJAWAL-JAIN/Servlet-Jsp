<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
body {
	background-image:
		url(image/financial-banking-technology-concept_387612-31.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

h3 {
	color: white;
}
</style>

</head>
<body>
	<jsp:include page="userHeader.jsp"></jsp:include>
	<h3>
		Welcome
		<%=session.getAttribute("firstName")%>
	</h3>

	<br>

	<h3>
		<a style='color: #FF5733' href="oneUserDetail.jsp">One User Detail</a>
	</h3>

	<h3>
		<a style='color: #FF5733' href="userDeposit.jsp">User Deposit</a>
	</h3>
	<h3>
		<a style='color: #FF5733' href="userWithdrawal.jsp">User
			Withdrawal</a>
	</h3>
	<h3>
		<a style='color: #FF5733' href="adminLogin.jsp">Logout</a>
	</h3>
</body>
</html>