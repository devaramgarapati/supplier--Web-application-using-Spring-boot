<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>Update Vendor</title>
</head>
<body>


<form action = "updateVendorForm" method="post">
<h2> Update Vendor:</h2>
<pre>

      <label for="ID">ID:</label> <input type="text" readonly class="form-control" id="Id" placeholder="Enter Id" name="Id" value= "${vendor.id}">
    
      <label for="code">Code:</label> <input type="text" class="form-control" id="code" placeholder="Enter code" name="code"  value= "${vendor.code}">
    
      <label for="name">Name:</label> <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" value= "${vendor.name}">
    
      <label for="type">Type:</label> 
            <label><input type="radio" name="type" value="Regular" ${vendor.type == 'Regular'?'checked':''}> Regular</label>
            <label><input type="radio" name="type" value="Contract" ${vendor.type == 'Contract'?'checked':''}> Contract</label>
    
    
      <label for="phone">Phone:</label> <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone" value= "${vendor.phone}">
    
    
      <label for="email">Email:</label> <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value= "${vendor.email}">
    
      <label for="address">Address:</label> <textarea rows="4" cols="50" class="form-control" id="address" placeholder="Enter address" name="address" >${vendor.address}</textarea>
    <button type="submit" value="save" class="btn btn-default">Save</button>
</pre>
</form>
${msg}
<br>
<a href = "displayVendors">View All</a>
</body>
</html>