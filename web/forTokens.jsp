<%-- 
    Document   : forTokens
    Created on : Sep 7, 2017, 6:24:14 PM
    Author     : Mike
--%>

<%@page import="java.util.Calendar"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Months</h1>
        <c:forTokens items="Jan,Feb,Mar,Jun,Jul,Aug,Sept,Oct,Nov,Dec" delims="," var="month">
            <b><c:out value="${month}"/></b><br>
            <c:forEach var ="a" begin="1" end="30">
                <c:out value="${a}"/>
            </c:forEach> <br>
        </c:forTokens>



        <%
            Calendar date;
            date = Calendar.getInstance();
            date.getDayOfWeek();

        %>
        <h2>Is it the first day of the week?</h2>
        <c:set var="dayOfWeek" value="{<%date%>}"/>
        <c:if test = "${dayOfWeek != SUNDAY}">
            <c:out value="It is not the first day of the week."/>
        </c:if>
        <c:if test="${dayOfWeek ==1}">
            <c:out value="It is the first day of the week."/>
        </c:if>

        
        
        <h3>TAKE THis seNTEnce ANd MaKe It aLL LOWER.</h3>
        
        <% 
            String string = "TAKE THis seNTEnce ANd MaKe It aLL LOWER.";
        %>
        
        <c:set var = "string1" value="<%TAKE THis seNTEnce ANd MaKe It aLL LOWER.%>"/>
        <c:set var= "string2" value="${fn:toLowerCase(string1)}"/>
        
    </body>
</html>
