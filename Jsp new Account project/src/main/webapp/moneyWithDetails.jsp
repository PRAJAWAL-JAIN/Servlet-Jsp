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
	<jsp:include page="accWith.jsp"></jsp:include>
	<center>
		<h1 style='color: white'>~Withdraw Action~</h1>
		<h3 style='color: white'>~Account Details~</h3>
	</center>
	<%
	String aNumber = request.getParameter("aNumber");
	double balance = Double.parseDouble(request.getParameter("balance"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("select * from account where aNumber=?");

		pst.setString(1, aNumber);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			aNumber = rs.getString(1);
			String name = rs.getString(2);
	%>
	<center>
		<form action="finalWithdrawal.jsp">
			<table border="3" width="200">

				<tr style='color: white'>

					<td>Account No:</td>
					<td><%=aNumber%><input type="hidden" name="aNumber"
						value="<%=aNumber%>"></td>
				</tr>

				<tr style='color: white'>

					<td>Name:</td>
					<td><%=name%><input type="hidden" name="name"
						value="<%=name%>"></td>
				</tr>

				<tr style='color: white'>

					<td>Balance:</td>
					<td><%=balance%><input type="hidden" name="balance"
						value="<%=balance%>"></td>
				</tr>
			</table>
			<br>
			<button type="submit">Withdrawal</button>
			<button type="back">
				<a href="moneyWithdrawal.jsp"
					style='color: black; text-decoration: none;'> Cancle </a>
			</button>
		</form>
	</center>
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>