<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
input {
	border: none;
}
</style>
</head>
<body>
	<jsp:include page="userUpd.jsp"></jsp:include>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("select * from user where id=?");

		pst.setInt(1, id);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			String firstName = rs.getString("firstName");
			String lastName = rs.getString("lastName");
			String mobileNo = rs.getString("mobileNo");
			String address = rs.getString("address");
			String city = rs.getString("city");
			String country = rs.getString("country");
			String gender = rs.getString("gender");
			String role = rs.getString("role");
			String userId = rs.getString("userId");
			String emailId = rs.getString("emailId");
			String password = rs.getString("password");
	%>
	<center>
		<h1 style='color: white'>~Update Detail~</h1>
		<form action="finUserUpdate.jsp">
			<table border="3">

				<tr>

					<td style='color: black; background: white'>Id:</td>
					<td><input type="text" name="id" value="<%=id%>"
						readonly="readonly" style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>First Name:</td>
					<td><input type="text" name="firstName" value="<%=firstName%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Last Name:</td>
					<td><input type="text" name="lastName" value="<%=lastName%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Mobile No:</td>
					<td><input type="text" name="mobileNo" value="<%=mobileNo%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Address:</td>
					<td><input type="text" name="address" value="<%=address%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>City:</td>
					<td><input type="text" name="city" value="<%=city%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Country:</td>
					<td><input type="text" name="country" value="<%=country%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Gender:</td>
					<td><input type="text" name="gender" value="<%=gender%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Role:</td>
					<td><input type="text" name="role" value="<%=role%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>User Id:</td>
					<td><input type="text" name="userId" value="<%=userId%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Email Id:</td>
					<td><input type="text" name="emailId" value="<%=emailId%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Password:</td>
					<td><input type="text" name="password" value="<%=password%>"
						style='color: white; background: black'></td>
				</tr>
			</table>
			<br>
			<button type="submit">Update</button>
			<button type="back">
				<a href="userAllDetails.jsp"
					style='color: black; text-decoration: none;'> Back </a>
			</button>
		</form>
	</center>
	<%
	} else {
	out.println("<h1 style='color:white'>Detail Not Available....");
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>