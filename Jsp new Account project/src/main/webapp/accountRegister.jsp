<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/37c90c9b7e57869a73196b689b20f056.gif);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>

	<h1 style='color: white'>~New Account Register~</h1>

	<form action="accRegistration.jsp">
		<table border="3" width="310" style='color: white'>
			<tr>
				<td>Account Number:</td>
				<td><input type="text" name="aNumber"></td>
			</tr>

			<tr>
				<td>IFSC Code:</td>
				<td><input type="text" name="ifscCode"></td>
			</tr>

			<tr>
				<td>Bank Name:</td>
				<td><input type="text" name="bankName"></td>
			</tr>

			<tr>
				<td>Branch Name:</td>
				<td><input type="text" name="branchName"></td>
			</tr>

			<tr>
				<td>Name:</td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td>Contact No:</td>
				<td><input type="text" name="contactNo"></td>
			</tr>

			<tr>
				<td>Email Id:</td>
				<td><input type="text" name="email"></td>
			</tr>

			<tr>
				<td>Address:</td>
				<td><input type="text" name="address"></td>
			</tr>

			<tr>
				<td>City:</td>
				<td><input type="text" name="city"></td>
			</tr>

			<tr>
				<td>Country:</td>
				<td><input type="text" name="country"></td>
			</tr>

			<tr>
				<td>Gender:</td>
				<td><input type="radio" name="gender" value="male">Male
					<input type="radio" name="gender" value="male">Female</td>
			</tr>

			<tr>
				<td>Balance:</td>
				<td><input type="text" name="balance"></td>
			</tr>

			<tr>
				<td><input type="submit" value="Register"></td>
				<td align="right"><input type="reset" value="Clear"></td>
			</tr>
		</table>
	</form>
</body>
</html>