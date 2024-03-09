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
		<jsp:include page="userShow.jsp"></jsp:include>
		<h1 style='color: white'>~All User Account Details~</h1>
		<%
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
			PreparedStatement pst = con.prepareStatement("select * from user");

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
		%>
		<table border="3" align="center" width="400">
			<tr style='background: white'>
				<td style='color: black'>Id</td>
				<td style='color: black'>First Name</td>
				<td style='color: black'>Last Name</td>
				<td style='color: black'>Mobile No</td>
				<td style='color: black'>Address</td>
				<td style='color: black'>City</td>
				<td style='color: black'>Country</td>
				<td style='color: black'>Gender</td>
				<td style='color: black'>User Id</td>
				<td style='color: black'>Password</td>
				<td style='color: black'>Update</td>
				<td style='color: black'>Detail</td>
				<td style='color: black'>Delete</td>
			</tr>
			<%
			do {
				int id = rs.getInt(1);
				String firstName = rs.getString(2);
				String lastName = rs.getString(3);
				String mobileNo = rs.getString(4);
				String address = rs.getString(5);
				String city = rs.getString(6);
				String country = rs.getString(7);
				String gender = rs.getString(8);
				String userId = rs.getString(10);
				String password = rs.getString(12);
			%>
			<tr style='color: white'>
				<td><%=id%></td>
				<td><%=firstName%></td>
				<td><%=lastName%></td>
				<td><%=mobileNo%></td>
				<td><%=address%></td>
				<td><%=city%></td>
				<td><%=country%></td>
				<td><%=gender%></td>
				<td><%=userId%></td>
				<td><%=password%></td>


				<td><h4>
						<a style='color: #EF9B0F' href="userUpdate.jsp?id=<%=id%>">Update</a>
					</h4></td>
				<td><h4>
						<a style='color: #FEFEFA' href="singleUserDetail.jsp?id=<%=id%>">Detail</a>
					</h4></td>
				<td><h4>
						<a style='color: #66FF00' href="userDelete.jsp?id=<%=id%>">Delete</a>
					</h4></td>
			</tr>

			<%
			} while (rs.next());
			%>

		</table>
		<br>
		<button type="back">
			<a href="adminHome.jsp" style='color: black; text-decoration: none;'>
				Back </a>
		</button>
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