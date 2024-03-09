<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-color: black;
	color: #fff;
}

.myform1 {
	width: 95%;
	padding: 10px;
	border: 10px solid red;
	margin: auto;
	background-color: #000;
	color: #fff;
}

.myform2 {
	display: flex;
	justify-content: center;
	align-items: center;
	width: max-content;
	border: 0px groove gray;
	margin: auto;
	padding: 30px;
	border-radius: 15px;
	background-image: url("image/wp9764006bg.jpg");
	background-size: 100% 100%;
	background-repeat: no-repeat;
}

.regimg1 {
	width: 50px;
	margin: 10px;
}

h1 {
	margin: 0px;
	width: max-content;
}
</style>
</head>
<body>

	<jsp:include page="adminHeader.jsp"></jsp:include>

	<center>
		<img alt="" src="image/295128.png" class="regimg1">
	</center>
	<div class="myform2">
		<div class="myform3">
			<form action="userSignUp.jsp">
				<table width="300" style='color: white'>
					<br>
					<tr>
						<td>First Name:</td>
						<td><input type="text" name="firstName"></td>
					</tr>

					<tr>
						<td>Last Name:</td>
						<td><input type="text" name="lastName"></td>
					</tr>

					<tr>
						<td>Mobile No:</td>
						<td><input type="text" name="mobileNo" maxlength="10"></td>
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
						<td>Email Id:</td>
						<td><input type="text" name="emailId"></td>
					</tr>

					<tr>
						<td>Password:</td>
						<td><input type="text" name="password"></td>
					</tr>
				</table>
				</center>
				<br>
				<p align="center">
					<button type="submit">Register</button>
					<button type="reset">Clear</button>
				</p>
			</form>

		</div>
	</div>

</body>
</html>