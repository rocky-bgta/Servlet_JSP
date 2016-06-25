<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go to home Page</title>
</head>
<body>
	
	<strong>Bummer.</strong><br>
	You caused a ${pageContext.exception} on the Server.<br>
	<img alt="" src="../images/error.jpg"><br>
	<a href = "/Java_Web_Certification">Return to Main</a>
</body>
</html>