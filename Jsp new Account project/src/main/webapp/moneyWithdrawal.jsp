<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/photo-1611605862651-c91b8778ce01.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>

	<h1 style='color: white'>~Money Withdrawal~</h1>
	<form action="moneyWithDetails.jsp">
		<table border="3" width="200">

			<tr style='color: white'>

				<td>Account No:</td>
				<td><input type="text" name="aNumber"
					style='background-color: transparent; color: white;'></td>
			</tr>
			<tr style='color: white'>
				<td style='color: white'>Balance:</td>
				<td><input type="text" name="balance"
					style='background-color: transparent; color: white;'></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Check"> <input type="reset" value="cancle"></td>
			</tr>
		</table>
</body>
</html>