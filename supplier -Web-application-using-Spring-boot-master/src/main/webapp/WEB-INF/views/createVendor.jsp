<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <title>Create Vendor</title>
</head>
<body>
<h2> Create Vendor:</h2>


<form action = "saveVendorForm" method="post">
<pre>
	
      <label for="ID">ID:</label> <input type="text" class="form-control" id="Id" placeholder="Enter Id" name="Id">
   
      <label for="code">Code:</label> <input type="text" class="form-control" id="code" placeholder="Enter code" name="code">
 
      <label for="name">Name:</label> <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
   
      <label for="type">Type:</label> 
            <label><input type="radio" name="type" value="Regular"> Regular</label>
            <label><input type="radio" name="type" value="Contract"> Contract</label>
   
      <label for="phone">Phone:</label> <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
   
      <label for="email">Email:</label> <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    
      <label for="address">Address:</label> <textarea rows="4" cols="50" class="form-control" id="address" placeholder="Enter address" name="address">
    </textarea>
    
    <button type="submit" value="save" class="btn btn-default">Save</button>
</pre>
</form>
${msg}
<br>
<a href = "displayVendors">View All</a>
</body>
</html>