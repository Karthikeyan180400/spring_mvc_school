<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 4px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: gray;
	color: white;
}
</style>
</head>
<body>
<%@include file="naviBar.jsp" %>
	<h2>Students Details</h2>

	<table id="customers">
		<tr>

			<th>ID</th>
			<th>Name</th>
			<th>Email</th>
			<th>Phone</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Country</th>
			<th>Address</th>
			<th>Edit</th>
			<th>Delete</th>

		</tr>
		<c:forEach var="student" items="${students}">
		<tr>
			<td>${student.getId()}</td>
			<td>${student.getName()}</td>
			<td>${student.getEmail()}</td>
			<td>${student.getPhone()}</td>
			<td>${student.getAge()}</td>
			<td>${student.getGender()}</td>
			<td>${student.getCountry()}</td>
			<td>${student.getAddress()}</td>

			<td><a href="editstudent?id=${student.getId()}">Edit</a></td>
			<td><a href="deletestudent?id=${student.getId()}">Delete</a></td>
       </tr>
       </c:forEach>
	</table>

</body>
</html>


