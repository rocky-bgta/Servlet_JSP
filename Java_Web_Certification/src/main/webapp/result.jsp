<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %> 
<%@ page import="com.example.model.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <p>
 <%
 
 	Dog dog = (Dog) getServletContext().getAttribute("dog");
 	out.print("Dog breed is: " +dog.getBreed());
 	
    ArrayList styles = (ArrayList)request.getAttribute("styles");
 	Iterator<?> it = styles.iterator();
	while(it.hasNext()){
		out.print("<br>try: " + it.next());
	}
	
 %>

</body>
</html>