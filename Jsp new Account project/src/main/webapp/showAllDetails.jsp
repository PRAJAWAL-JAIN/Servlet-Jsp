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
		<jsp:include page="showAll.jsp"></jsp:include>
		<h1 style='color: white'>~All Account Details~</h1>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
			PreparedStatement pst = con.prepareStatement("select * from account");

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
		%>
		<table border="3" align="center" width="400">
			<tr style='background: white'>
				<td style='color: black'>Ac Number</td>
				<td style='color: black'>Ifsc Code</td>
				<td style='color: black'>Bank Name</td>
				<td style='color: black'>Branch Name</td>
				<td style='color: black'>Name</td>
				<td style='color: black'>Contact No.</td>
				<td style='color: black'>Email</td>
				<td style='color: black'>Address</td>
				<td style='color: black'>City</td>
				<td style='color: black'>Country</td>
				<td style='color: black'>Gender</td>
				<td style='color: black'>Balance</td>
				<td style='color: black'>Update</td>
				<td style='color: black'>Detail</td>
				<td style='color: black'>Delete</td>
			</tr>
			<%
			do {
				String aNumber = rs.getString(1);
				String ifscCode = rs.getString(2);
				String bankName = rs.getString(3);
				String branchName = rs.getString(4);
				String name = rs.getString(5);
				String contactNo = rs.getString(6);
				String email = rs.getString(7);
				String address = rs.getString(8);
				String city = rs.getString(9);
				String country = rs.getString(10);
				String gender = rs.getString(11);
				double balance = rs.getDouble(12);
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

				<td><h4>
						<a style='color: #EF9B0F' href="update.jsp?aNumber=<%=aNumber%>">Update</a>
					</h4></td>
				<td><h4>
						<a style='color: #FEFEFA'
							href="accDetail.jsp?aNumber=<%=aNumber%>">Detail</a>
					</h4></td>
				<td><h4>
						<a style='color: #66FF00' href="delete.jsp?aNumber=<%=aNumber%>">Delete</a>
					</h4></td>
			</tr>
			<%
			} while (rs.next());
			%>
		</table>
		<%
		}
		con.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
	</center>
</body>
</html>