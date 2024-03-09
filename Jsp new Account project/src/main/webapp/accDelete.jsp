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
	<jsp:include page="acDe.jsp"></jsp:include>
	<%
	String aNumber = request.getParameter("aNumber");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vickey", "root", "root");
		PreparedStatement pst = con.prepareStatement("delete from account where aNumber=?");

		pst.setString(1, aNumber);

		int i = pst.executeUpdate();
		if (i > 0) {
			out.println("<h1 style='color:white'>Account Detail Delete Successfull....");
	%>

	<br>
	<tr>
		<td style='color: white' colspan="8" align="center"><a
			href="showAllDetails.jsp"><input type="submit" value="back"></a></td>
	</tr>
	<%
	} else {
	out.println("<h1 style='color:white'>Account Detail Not Deleted Try Again....");
	%>
	<br>
	<tr>
		<td style='color: white' colspan="8" align="center"><a
			href="showAllDetails.jsp"><input type="submit" value="back"></a></td>
	</tr>
	<%
	}
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>
</html>