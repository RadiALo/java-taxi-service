<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
    <body>
        <%@ include file="header.jsp"%><br>
        <c:if test="${cars.size() == 0}">No cars exist!</c:if>
        <c:if test="${cars.size() != 0}">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Model</th>
                    <th>Manufacturer</th>
                    <th>Drivers</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items="${cars}" var="car">
                    <tr>
                        <th><c:out value="${car.id}"/></th>
                        <th><c:out value="${car.model}"/></th>
                        <th><c:out value="${car.manufacturer.name}"/></th>
                        <th><a href="/cars/drivers?id=${car.id}">Manage</a></th>
                        <th><a href="/cars/delete?id=${car.id}">Delete</a></th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <a style="color:red">${errorMsg}</a>
        <form action="${pageContext.request.contextPath}/cars/add" method="post">
            Model: <input type="text" name="model">
            Manufacturer:
            <select name="manufacturerId">
                <c:forEach items="${manufacturers}" var="manufacturer">
                    <option value="${manufacturer.id}">
                        <c:out value="${manufacturer.id}" />. <c:out value="${manufacturer.name}" />
                    </option>
                </c:forEach>
            </select>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
