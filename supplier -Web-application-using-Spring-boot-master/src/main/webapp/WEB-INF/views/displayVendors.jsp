<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Vendors:</h2>
<table border="1" style="width:100%" >
<tr>
	<th><b>ID</b></th>
	<th>Code</th>
	<th>Name</th>
	<th>Type</th>
	<th>Phone</th>
	<th>Email</th>
	<th>Address</th>
	<th>Delete</th>
	<th>Edit</th>
</tr>
	<c:forEach items="${vendors}" var="vendor">
	<tr>
		<td>${vendor.id}</td>
		<td>${vendor.code}</td>
		<td>${vendor.name}</td>
		<td>${vendor.type}</td> 
		<td>${vendor.phone}</td>
		<td>${vendor.email}</td>
		<td>${vendor.address}</td>
		<td><a href="deleteVendor?id=${vendor.id}">Delete Vendor</a></td>
		<td><a href="showUpdate?id=${vendor.id}">Edit Vendor</a></td>
		
	</tr>
	</c:forEach>

</table>

<br>
<a href = "showCreate">Add Vendor Record</a>



</body>
</html>