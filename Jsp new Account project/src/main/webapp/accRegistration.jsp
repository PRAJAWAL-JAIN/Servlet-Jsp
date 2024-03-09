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
	<jsp:include page="accReg.jsp"></jsp:include>
	<%
	String aNumber = request.getParameter("aNumber");
	String ifscCode = request.getParameter("ifscCode");
	String bankName = request.getParameter("bankName");
	String branchName = request.getParameter("branchName");
	String name = request.getParameter("name");
	String contactNo = request.getParameter("contactNo");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String country = request.getParameter("country");
	String gender = request.getParameter("gender");
	double balance = Double.parseDouble(request.getParameter("balance"));

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("insert into account values(?,?,?,?,?,?,?,?,?,?,?,?)");

		pst.setString(1, aNumber);
		pst.setString(2, ifscCode);
		pst.setString(3, bankName);
		pst.setString(4, branchName);
		pst.setString(5, name);
		pst.setString(6, contactNo);
		pst.setString(7, email);
		pst.setString(8, address);
		pst.setString(9, city);
		pst.setString(10, country);
		pst.setString(11, gender);
		pst.setDouble(12, balance);

		int i = pst.executeUpdate();
		if (i > 0) {
			out.println("<h1 style='color:white'>Account Registration Successfull....");
	%>
	<br>
	<tr>
		<td style='color: white' colspan="8" align="center"><a
			href="accountRegister.jsp"><input type="submit"
				value="New Registration"></a></td>
	</tr>
	<%
	} else {
	out.println("<h1 style='color:white'>Account Registration Failed Try Again....");
	%>
	<br>
	<tr>
		<td style='color: white' colspan="8" align="center"><a
			href="accountRegister.jsp"><input type="submit"
				value="New Registration"></a></td>
	</tr>
	<%
	}
	con.close();
	pst.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>