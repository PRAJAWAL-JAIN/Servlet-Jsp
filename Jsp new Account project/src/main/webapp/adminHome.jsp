<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/d6a692fc1e0489955e2b4ed4ae742c76.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}

h3 {
	color: white;
}
</style>

</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<h3>
		Welcome
		<%=session.getAttribute("firstName")%>
	</h3>

	<br>
	<a style='color: #FF5733' href="accountRegister.jsp">New Account
		Register</a>
	<br>
	<a style='color: #FF5733' href="accountSearch.jsp">One Account
		Search Detail</a>
	<br>
	<a style='color: #FF5733' href="showAllDetails.jsp">All Account
		Details</a>
	<br>
	<a style='color: #FF5733' href="userAllDetails.jsp">All User Details</a>
	<br>
	<a style='color: #FF5733' href="moneyDeposit.jsp">Money Deposit</a>
	<br>
	<a style='color: #FF5733' href="moneyWithdrawal.jsp">Money
		Withdrawal</a>
	<br>
	<a style='color: #FF5733' href="adminLogin.jsp">Logout</a>
</body>
</html>