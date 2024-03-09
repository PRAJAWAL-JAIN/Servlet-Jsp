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

	<%
	String aNumber = request.getParameter("aNumber");
	double balance = Double.parseDouble(request.getParameter("balance"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");

		double CurrentBalance = 0;

		PreparedStatement pst = con.prepareStatement("select balance from account where aNumber=?");

		pst.setString(1, aNumber);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			CurrentBalance = rs.getDouble(1);
		}
		rs.close();
		if (CurrentBalance >= balance) {
			PreparedStatement pst1 = con.prepareStatement("update account set balance=balance-? where aNumber=?");
			pst1.setDouble(1, balance);
			pst1.setString(2, aNumber);

			int i = pst1.executeUpdate();
			if (i > 0) {
	%>
	<jsp:include page="accFinWith.jsp"></jsp:include>
	<%
	out.println("<h1 style='color:white'>Money Withdraw Successfull.....");
	%>
	<br>

	<tr>
		<td style='color: white'><a href="moneyWithdrawal.jsp"><input
				type="submit" value="back"></a></td>
	</tr>
	<%
	} else {
	out.println("<h1 style='color:white'>Money Not Withdraw Try Again Later.....");
	}
	} else {
	%>
	<jsp:include page="accFinWith2.jsp"></jsp:include>
	<%
	//out.println("<h1 style='color:black'>Insufficient balance");
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>