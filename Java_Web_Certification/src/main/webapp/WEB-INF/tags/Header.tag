<%@ tag language="java" pageEncoding="ISO-8859-1"%>

<%-- <%@ attribute name="subTitle" required="true" rtexprvalue="true" %> --%>
<%@ attribute name="fontColor" required="true" rtexprvalue="true" %>
<%@ tag body-content="tagdependent" %>

<img src="../images/header.jpg"/>
<br>

<%-- <em><strong>${subTitle}</strong></em> --%>

<em><strong><font color="${fontColor}"></font><jsp:doBody/></strong></em>