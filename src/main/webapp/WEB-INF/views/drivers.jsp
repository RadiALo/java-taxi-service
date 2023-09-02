<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Drivers</title>
</head>
    <body>
        <%@ include file="header.jsp"%>
        <main>
            <section>
                <h2>Drivers list</h2>
                <c:if test="${drivers.size() == 0}">No drivers exist!</c:if>
                <c:if test="${drivers.size() != 0}">
                    <c:forEach items="${drivers}" var="driver">
                        <div class="item-container">
                            <div class="item item-id"><c:out value="${driver.id}"/></div>
                            <div class="item"><c:out value="${driver.name}"/></div>
                            <div class="item"><c:out value="${driver.licenseNumber}"/></div>
                            <div class="item"><a class="container-link" href="/drivers/delete?id=${driver.id}">Delete</a></div>
                        </div>
                    </c:forEach>
                </c:if>
            </section>
            <a style="color:red">${errorMsg}</a>
        </main>
    </body>
</html>