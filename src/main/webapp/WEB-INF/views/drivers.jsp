<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Drivers</title>
</head>
    <body>
        <%@ include file="header.jsp"%><br>
        <c:if test="${drivers.size() == 0}">No drivers exist!</c:if>
        <c:if test="${drivers.size() != 0}">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>License number</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items="${drivers}" var="driver">
                    <tr>
                        <th><c:out value="${driver.id}"/></th>
                        <th><c:out value="${driver.name}"/></th>
                        <th><c:out value="${driver.licenseNumber}"/></th>
                        <th><a href="/drivers/delete?id=${driver.id}">Delete</a></th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <a style="color:red">${errorMsg}</a>
    </body>
</html>