<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action ="commentsProcess.jsp" method="post">
		Add your comment: <br>
		<textarea name="input" cols="40" rows="10" ></textarea><br>
		<input name = "commentSubmit" type="button" value = "Add Comment">
		
		<br>
		<a href = "/Java_Web_Certification/Beer-v1/form.html">Return to Main</a>
	</form>
</body>
</html>