<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" 	uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" 	uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="x"   uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="./css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
	<link href="./css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="./js/jquery-1.9.0.js"/>
	</script>
	<script type="text/javascript" src="./js/bootstrap.js"/>
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSTL and EL expression</title>
</head>
<body>
	<b>Tip of the Day:</b> <br><br>
	${fn:escapeXml(pageContent.currentTip)}
	
	<br><br>
	<b>Using c:out </b><br>
	<c:out value="${pageContent.currentTip}" escapeXml="true"></c:out>
	<br><br>
	Default value with c:out
	
	<b>Hello <c:out value="${user}" default="guest"></c:out> </b>OR<br>
	<b>Hello <c:out value="${user}" default="guest"></c:out> </b>
	
	<br><br>
	Movie list's first element using EL expression: <br>
	${pageContent.movieList[0]}
	
	<br>
	<table class="table table-bordered">
		<%
			String[] items = (String[]) request.getAttribute("movieArray");
			String var = null;
			for(int i=0; i<items.length; i++){
				var = items[i];
		%>
		<tr>
			<td> <%= var %></td>
		</tr>
		<%} %>
		
	</table>
	
	<br>
	Using JSTL
	<br>
	<table class="table table-bordered table-striped">
		<c:forEach var="movie" items = "${movieArray}" varStatus="movieLoopCount">
			<tr>
				<td>Count: ${movieLoopCount.count}
			
				<td>${movie}</td>
			</tr>
		</c:forEach>
	</table>
	
	Now nested for loop:<br>
	<table class="table table-bordered table-striped">
		<c:forEach var="listElement" items = "${movies}">
			<c:forEach var="movie" items="${listElement}" varStatus="movieLoopCount">
				<tr>	
					<td> Count: ${movieLoopCount.count} </td>
					<td> ${movie}</td>
				</tr>
			</c:forEach>
		</c:forEach>
	</table>
	
	
		
</body>
</html>