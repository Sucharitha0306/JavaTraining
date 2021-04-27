<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account Page</title>


<style>


div.background {
background-image: url("cusmenu.jpg");
  background-color: #cccccc;
  height: 300px;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

div.transbox {
  margin: 100px;
  background-color: #ffffff;
  border: 1px solid black;
  opacity: 0.9;
  text-align:
}

div.transbox a {
  margin: 5%;
  font-weight: bold;
  color: #000000;
}
input.right {
        float: right;
      }
      ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #4CAF50;
}

.active {
  background-color: #4CAF50;
}
</style>

</head>
<body>




<div class="background">
<h1 align="center">Welcome to Online Food Order</h1>
<%
  String user=(String)session.getAttribute("user");
  out.println("Welcome " +user);
  
%>
<form method="post" action="login.html">
<input type="submit" value="Logout" class="right"/>
</form>
  <div class="transbox">
    	
	 <ul>
	 <li><a class="active" href="#home">Place Order</a></li>
	  <li><a href="showCustomers.jsp">Show Customers</a></li>
	  <li><a href="#news">Order History</a></li>
	  <li><a href="#contact">Pending Orders</a></li>
	  <li><a href="customerProfile.jsp">Profile</a></li>
	</ul>
  </div>
</div>
</body>
</html>