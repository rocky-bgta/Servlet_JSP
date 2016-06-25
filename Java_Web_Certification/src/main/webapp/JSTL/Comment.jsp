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
	<%--<script type="text/javascript" src="./js/jquery-1.9.0.js"/>
	</script>
	<script type="text/javascript" src="./js/bootstrap.js"/>
	</script>--%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	
	<strong>Member Comments</strong>
	<table>
		<c:forEach var = "comment" items="${commentList}">
			<tr>
				<td>${comment}</td>
			</tr>
		</c:forEach>
	</table>
	
	
	
	<c:if test="${userType eq 'member' }">
		<jsp:include page="inputComments.jsp"></jsp:include>
	</c:if>

</body>
</html>