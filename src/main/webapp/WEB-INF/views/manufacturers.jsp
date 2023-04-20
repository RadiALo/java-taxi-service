<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Manufactures</title>
    </head>
    <body>
        <%@ include file="header.jsp" %><br>
        <c:if test="${manufacturers.size() == 0}">No manufacturers exist!</c:if>
        <c:if test="${manufacturers.size() != 0}">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Country</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <tr>
                        <th><c:out value="${manufacturer.id}"/></th>
                        <th><c:out value="${manufacturer.name}"/></th>
                        <th><c:out value="${manufacturer.country}"/></th>
                        <th><a href="/manufacturers/delete?id=${manufacturer.id}">Delete</a></th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <a style="color:red">${errorMsg}</a>
        <form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
            Name: <input type="text" name="name">
            Country: <input type="text" name="country"><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
