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

	<center>
		<jsp:include page="acDet.jsp"></jsp:include>
		<h1 style='color: white'>~Account Detail~</h1>
	</center>
	<%
	String aNumber = request.getParameter("aNumber");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("select * from account where aNumber=?");

		pst.setString(1, aNumber);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
	%>
	<table border="3" align="center" width="500" hight="300">
		<tr style='background: white'>
			<td style='color: black'>Ac Number</td>
			<td style='color: black'>Ifsc Code</td>
			<td style='color: black'>Bank Name</td>
			<td style='color: black'>Branch Name</td>
			<td style='color: black'>Name</td>
			<td style='color: black'>Contact No</td>
			<td style='color: black'>Email</td>
			<td style='color: black'>Address</td>
			<td style='color: black'>City</td>
			<td style='color: black'>Country</td>
			<td style='color: black'>Gender</td>
			<td style='color: black'>Balance</td>
		</tr>
		<%
		do {
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
		<tr style='color: white'>
			<td><%=aNumber%></td>
			<td><%=ifscCode%></td>
			<td><%=bankName%></td>
			<td><%=branchName%></td>
			<td><%=name%></td>
			<td><%=contactNo%></td>
			<td><%=email%></td>
			<td><%=address%></td>
			<td><%=city%></td>
			<td><%=country%></td>
			<td><%=gender%></td>
			<td><%=balance%></td>
		</tr>
		<tr>
			<td style='color: white' colspan="12" align="center"><a
				href="showAllDetails.jsp"><input type="submit" value="back"></a></td>
		</tr>
		<%
		} while (rs.next());
		%>
	</table>
	<%
	} else {
	out.println("Account Detail Not Available");
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>