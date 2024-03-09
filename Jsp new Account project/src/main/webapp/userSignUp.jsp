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
	<jsp:include page="usUp.jsp"></jsp:include>
	<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String mobileNo = request.getParameter("mobileNo");

	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String country = request.getParameter("country");

	String gender = request.getParameter("gender");
	String role = "user";
	String userId = request.getParameter("emailId");

	String emailId = request.getParameter("emailId");
	String password = request.getParameter("password");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement(
		"insert into user(firstName,lastName,mobileNo,address,city,country,gender,role,userId,emailId,password) values(?,?,?,?,?,?,?,?,?,?,?)");

		//pst.setInt(1, id);
		pst.setString(1, firstName);
		pst.setString(2, lastName);
		pst.setString(3, mobileNo);
		pst.setString(4, address);
		pst.setString(5, city);
		pst.setString(6, country);
		pst.setString(7, gender);
		pst.setString(8, role);
		pst.setString(9, userId);
		pst.setString(10, emailId);
		pst.setString(11, password);

		int i = pst.executeUpdate();
		if (i > 0) {
			out.println("<h1 style='color:white'>Account Registration Successfull....");
		} else {
			out.println("<h1 style='color:white'>Account Registration Not Successfull....");
		}
		con.close();
		pst.close();
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>