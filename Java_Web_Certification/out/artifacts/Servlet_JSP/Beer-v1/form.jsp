<%@taglib prefix="formTags" uri="http://example.com/tags/forms" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1 align="center">Beer Selection Page</h1>
 	<form method ="post" action = "SelectBeer.do">
 		Select beer charateristics<p>
 		
 		Color:
 		<formTags:select name="color" size="1" optionsList="${applicationScope.colorList}"/>
 		<!-- <select name="color" size="1">
 			<option>light
 			<option>amber
 			<option>brown
 			<option>dark
 		</select> -->
 		<br><br>
 		<center>
 			<!-- <input type = "submit" title="Create Session and See Query parameter"> -->
 			<button type="submit" value="Submit">Create Session and See Query parameter</button>
 		</center>
 		
 		<a href="/Java_Web_Certification/download">Download!</a><br>
 		<a href="/Java_Web_Certification/Cookies/createCookies.jsp">Create Cookies</a><br><br><br>
 		
 		<a href ="/Java_Web_Certification/test/BasicCounter.jsp">Test Basic Counter</a><br>
 		<a href ="/Java_Web_Certification/test/TestBean.jsp">Test Custome tag only Function</a><br><br>
 		
 		<a href ="/Java_Web_Certification/jstlRequest" > EL Expression Test</a><br><br>
 		
 		<a href ="/Java_Web_Certification/Comments">Test Comments</a><br><br>
 		
 		<a href="/Java_Web_Certification/test/badPage.jsp">Make Boom</a><br><br>
 		
 		<a href ="/Java_Web_Certification/test/testCustomTagAdvice.jsp">Real Custom Tag</a><br><br>
 		
 		<a href ="/Java_Web_Certification/test/tagTest.jsp">Check Tag file header</a>
 		
 	</form>
</body>
</html>