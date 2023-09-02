<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
    <body>
        <%@ include file="header.jsp"%><br>
        <main>
            <section>
                <c:if test="${cars.size() == 0}">No cars exist!</c:if>
                <c:if test="${cars.size() != 0}">
                    <h2>Cars list</h2>
                    <c:forEach items="${cars}" var="car">
                        <div class="item-container">
                            <div class="item item-id"><c:out value="${car.id}"/></div>
                            <div class="item"><c:out value="${car.model}"/></div>
                            <div class="item"><c:out value="${car.manufacturer.name}"/></div>
                            <a class="container-link" href="/cars/drivers?id=${car.id}">Manage</a>
                            <a class="container-link" href="/cars/delete?id=${car.id}">Delete</a>
                        </div>
                    </c:forEach>
                </c:if>
                <a style="color:red">${errorMsg}</a>
            </section>
            <section>
                <h2>Create new car</h2>
                <form action="${pageContext.request.contextPath}/cars/add" method="post">
                    <div class="table">
                        <p class="tabled-row">
                            <label class="tabled" for="model">Model:</label>
                            <input class="tabled"
                                   type="text"
                                   id="model"
                                   name="model"
                                   placeholder="Enter car model"
                                   required>
                        </p>
                        <p class="tabled-row">
                            <label class="tabled" for="manufacturerId">Manufacturer:</label>
                            <select class="tabled" id="manufacturerId" name="manufacturerId">
                                <c:forEach items="${manufacturers}" var="manufacturer">
                                    <option value="${manufacturer.id}">
                                        <c:out value="${manufacturer.name}" />
                                    </option>
                                </c:forEach>
                            </select>
                        </p>
                    </div>
                    <input class="button" type="submit" value="Add">
                </form>
            </section>
        </main>
    </body>
</html>
