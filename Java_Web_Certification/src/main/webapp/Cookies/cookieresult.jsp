<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String a = request.getParameter("username");
	out.println("Here is the query parameter: " +a);
	out.println("<br>");
	Cookie[] cookies = request.getCookies();
	if(cookies !=null){
		for(int i = 0; i<cookies.length; i++){
			Cookie cookie = cookies[i];
			if(cookie.getName().equals("usernameFromCookie")){
				String valueFromCookie = cookie.getValue();
				out.println("Hello " + valueFromCookie);
				break;
			}
		}
	}

%>
	<br>
	<a href = "/Java_Web_Certification/Beer-v1/form.jsp">Return to Main</a>
</body>
</html>