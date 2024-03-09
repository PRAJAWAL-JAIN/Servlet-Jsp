<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/wp2970129.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<center>
		<h1 style='color: white'>~Money Deposit~</h1>
		<form action="moneyDepDetails.jsp">
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
		</form>
	</center>
</body>
</html>