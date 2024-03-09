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
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");

	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("select role from user where userId = ?");

		pst.setString(1, userId);

		ResultSet rs = pst.executeQuery();
		if (rs.next()) {
			String userRole = rs.getString("role");

			if (userRole.contains("admin")) {
		PreparedStatement pst1 = con.prepareStatement("select * from user where userId=? and password=?");

		pst1.setString(1, userId);
		pst1.setString(2, password);

		ResultSet rs1 = pst1.executeQuery();
		if (rs1.next()) {
			String userId1 = rs1.getString("userId");
			String fName = rs1.getString("firstName");

			session.setAttribute("userId", userId1);
			session.setAttribute("firstName", fName);
			response.sendRedirect("adminHome.jsp");
		} else {
			request.setAttribute("error", "Invalid Id & Password");
	%>
	<jsp:forward page="adminLogin.jsp"></jsp:forward>
	<%
	}
	}

	if (userRole.contains("user")) {
	PreparedStatement pst2 = con.prepareStatement("select * from user where userId=? and password=?");

	pst2.setString(1, userId);
	pst2.setString(2, password);

	ResultSet rs2 = pst2.executeQuery();
	if (rs2.next()) {
	String userId2 = rs2.getString("userId");
	String fName1 = rs2.getString("firstName");

	session.setAttribute("userId", userId2);
	session.setAttribute("firstName", fName1);
	response.sendRedirect("userHome.jsp");
	} else {
	out.println(userRole);
	request.setAttribute("error", "Invalid Id & Password");
	%>
	<jsp:forward page="adminLogin.jsp"></jsp:forward>
	<%
	}
	}

	} else {
	request.setAttribute("error", "No Records Found.");
	%>
	<jsp:forward page="adminLogin.jsp"></jsp:forward>
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();

	}
	%>

</body>
</html>