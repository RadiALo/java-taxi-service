<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Car drivers</title>
</head>
    <body>
        <%@ include file="header.jsp"%><br>
        <c:if test="${drivers.size() == 0}">No cars exist!</c:if>
        <c:if test="${drivers.size() != 0}">
            <table>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>License name</th>
                    <th>Remove</th>
                </tr>
                <c:forEach items="${drivers}" var="driver">
                    <tr>
                        <th><c:out value="${driver.id}"/></th>
                        <th><c:out value="${driver.name}"/></th>
                        <th><c:out value="${driver.licenseNumber}"/></th>
                        <th><a href="/cars/drivers/remove?id=${car.id}&driver=${driver.id}">Remove</a></th>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <a style="color:red">${errorMsg}</a>
        <form action="${pageContext.request.contextPath}/cars/drivers/add?id=${car.id}" method="post">
            Select driver to add:
            <select name="candidateId">
                <c:forEach items="${candidates}" var="candidate">
                    <option value="${candidate.id}">
                        <c:out value="${candidate.id}" />. <c:out value="${candidate.name}" />
                    </option>
                </c:forEach>
            </select>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
