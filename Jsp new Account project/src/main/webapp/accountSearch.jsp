<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background-image: url(image/38123.jpg);
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
</head>
<body>
	<jsp:include page="adminHeader.jsp"></jsp:include>
	<center>
		<h1 style='color: white'>~One Account Search Detail~</h1>
		<form action="accSearch.jsp">
			<table border="3" align="center" width="250">
				<tr>
					<td style='color: white'>Account No:</td>
					<td><input type="text" name="aNumber"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Search"> <input type="reset" value="cancle"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>