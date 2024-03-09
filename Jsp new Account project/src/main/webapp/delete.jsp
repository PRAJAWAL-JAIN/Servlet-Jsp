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
</head>
<body>
	<jsp:include page="accDel.jsp"></jsp:include>
	<%
	String aNumber = request.getParameter("aNumber");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("select * from account where aNumber=?");

		pst.setString(1, aNumber);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			String ifscCode = rs.getString("ifscCode");
			String bankName = rs.getString("bankName");
			String branchName = rs.getString("branchName");
			String name = rs.getString("name");
			String contactNo = rs.getString("contactNo");
			String email = rs.getString("email");
			String address = rs.getString("address");
			String city = rs.getString("city");
			String country = rs.getString("country");
			String gender = rs.getString("gender");
			double balance = rs.getDouble("balance");
	%>
	<center>
		<h1 style='color: white'>~Account Delete Detail~</h1>
		<form action="accDelete.jsp">
			<table border="3">

				<tr>

					<td style='color: black; background: white'>Account Number:</td>
					<td><input type="text" name="aNumber" value="<%=aNumber%>"
						readonly="readonly" style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Ifsc Code:</td>
					<td><input type="text" name="ifscCode" value="<%=ifscCode%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Bank Name:</td>
					<td><input type="text" name="bankName" value="<%=bankName%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Branch Name:</td>
					<td><input type="text" name="branchName"
						value="<%=branchName%>" style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Name:</td>
					<td><input type="text" name="name" value="<%=name%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Contact No:</td>
					<td><input type="text" name="contactNo" value="<%=contactNo%>"
						style='color: white; background: black'></td>

				</tr>

				<tr>

					<td style='color: black; background: white'>Email:</td>
					<td><input type="text" name="email" value="<%=email%>"
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

					<td style='color: black; background: white'>Balance:</td>
					<td><input type="text" name="balance" value="<%=balance%>"
						style='color: white; background: black'></td>
				</tr>
			</table>
			<br>
			<button type="submit">Delete</button>
			<button type="back">
				<a href="showAllDetails.jsp"
					style='color: black; text-decoration: none;'> Back </a>
			</button>
			<%-- 	 <br>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Delete"> &nbsp; &nbsp;<a href='showAllDetails.jsp'><input
						type="back" value="back"></a></td>
				</td>
			</tr>
			--%>
		</form>
	</center>
	<%
	} else {
	out.println("<h1 style='color:white'>Account Detail Not Available Try Again...");
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>