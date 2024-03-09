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
	<jsp:include page="upAc.jsp"></jsp:include>
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
		PreparedStatement pst = con.prepareStatement(
		"update account set ifscCode=?,bankName=?,branchName=?,name=?,contactNo=?,email=?,address=?,city=?,country=?,gender=?,balance=? where aNumber=?");

		pst.setString(1, ifscCode);
		pst.setString(2, bankName);
		pst.setString(3, branchName);
		pst.setString(4, name);
		pst.setString(5, contactNo);
		pst.setString(6, email);
		pst.setString(7, address);
		pst.setString(8, city);
		pst.setString(9, country);
		pst.setString(10, gender);
		pst.setDouble(11, balance);
		pst.setString(12, aNumber);

		int i = pst.executeUpdate();
		if (i > 0) {
			out.println("<h1 style='color:white'>Account Detail Updated Successfull....");
	%>

	<br>
	<tr>
		<td style='color: white' colspan="8" align="center"><a
			href="showAllDetails.jsp"><input type="submit" value="back"></a></td>
	</tr>
	<%
	} else {
	out.println("<h1 style='color: white'>Account Detail Not Updated....");
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>