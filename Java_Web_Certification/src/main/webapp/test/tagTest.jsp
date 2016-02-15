<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "myTags" tagdir = "/WEB-INF/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Tags</title>

</head>
<body>

	<%-- <myTags:Header subTitle="We take the String out of SOAP"/> --%>
	<myTags:Header fontColor="#660099">
		We take the string out of SOAP. OK, so it's not Jini, <br>
		but we'll help you get through it with the least<br>
		frustration and hair loss.
	</myTags:Header>
	<br>
	Contact us at: ${initParam.mainEmail }
	
</body>
</html>