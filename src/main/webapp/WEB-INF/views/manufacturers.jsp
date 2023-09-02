<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Manufactures</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
       <main>
           <section>
               <h2>Manufacturers list</h2>
               <c:if test="${manufacturers.size() == 0}">No manufacturers exist!</c:if>
               <c:if test="${manufacturers.size() != 0}">
                   <c:forEach items="${manufacturers}" var="manufacturer">
                       <div class="item-container">
                           <div class="item item-id"><c:out value="${manufacturer.id}"/></div>
                           <div class="item"><c:out value="${manufacturer.name}"/></div>
                           <div class="item"><c:out value="${manufacturer.country}"/></div>
                           <div class="item"><a class="container-link" href="/manufacturers/delete?id=${manufacturer.id}">Delete</a></div>
                       </div>
                   </c:forEach>
               </c:if>
           </section>
           <section>
               <h2>Add manufacturer</h2>
               <a style="color:red">${errorMsg}</a>
               <form action="${pageContext.request.contextPath}/manufacturers/add" method="post">
                   <div class="table">
                       <p class="tabled-row">
                           <label class="tabled" for="name" required>Name:</label>
                           <input class="tabled"
                                  type="text"
                                  id="name"
                                  name="name"
                                  placeholder="Enter manufacturer name">
                       </p>
                       <p class="tabled-row">
                           <label class="tabled" for="country" required>Country:</label>
                           <input class="tabled"
                                  type="text"
                                  id="country"
                                  name="country"
                                  placeholder="Enter country name">
                       </p>
                   </div>
                   <input class="button" type="submit" value="Add">
               </form>
           </section>
       </main>
    </body>
</html>
