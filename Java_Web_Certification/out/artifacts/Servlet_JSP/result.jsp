<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %> 
<%@ page import="com.example.model.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Session and Cookies</title>
</head>
<body>

 <p>
 <%
 
 	Cookie cookie = new Cookie("username", "Rocky");
 	cookie.setMaxAge(30*60);
 	response.addCookie(cookie);
 	
 	HttpSession sess = request.getSession();
 	if(sess.isNew()){
 		out.println("<bold>This is a new session</bold><br><br>");
 	}
 	else{
 		out.println("<bold>Welcome back! to existing session</bold><br><br>");
 		//for test purpose we invalidate session
 		sess.invalidate();
 	}
 	Dog dog = (Dog) getServletContext().getAttribute("dog");
 	out.print("Dog breed is: " +dog.getBreed());
 	
    ArrayList styles = (ArrayList)request.getAttribute("styles");
 	Iterator<?> it = styles.iterator();
	while(it.hasNext()){
		out.print("<br>try: " + it.next());
	}
	
	
 %>
	<br>
     <a href = "/Java_Web_Certification">Return to Main</a>
</body>
</html>