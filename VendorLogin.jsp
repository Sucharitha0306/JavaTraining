<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.mphasis.java.Customer.ConnectionHelper"%>
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
	String email=request.getParameter("ven_emailid");
	String pwd=request.getParameter("ven_pass");
	Connection con= ConnectionHelper.getConnection();
	String cmd="select count(*) cnt from vendor where ven_email=? AND ven_password=?";
	PreparedStatement pst=con.prepareStatement(cmd);
	pst.setString(1, email);
	pst.setString(2, pwd);
	ResultSet rs = pst.executeQuery();
	rs.next();
	session.setAttribute("email",email);
	int count = rs.getInt("cnt");
	if(count==1){
%>
	<jsp:forward page="VendorMenu.jsp"></jsp:forward>
<%
	} else{
%>
	<jsp:include page="VendorLogin.html"></jsp:include>
	<p> <b>***INVALID CREDENTIALS***</b> </p>
<%
	}
%>
</body>
</html>