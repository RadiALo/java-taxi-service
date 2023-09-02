<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%@ include file="styles.jsp"%>
  <title>Log In</title>
</head>
<body>
  <div class="logo logo-div logo-big">Taximum</div>
  <main class="interaction-form">
    <p class="error-message">${errorMsg}</p>
    <form action="${pageContext.request.contextPath}/login" method="post">
      <div class="table">
        <p class="tabled-row">
          <label for="login" class="tabled">Login:</label>
          <input type="text"
                 id="login"
                 class="tabled"
                 name="login"
                 placeholder="Enter your name"
                 required>
        </p>
        <p class="tabled-row">
          <label for="password" class="tabled">Password:</label>
          <input type="password"
                 id="password"
                 class="tabled"
                 placeholder="Enter your password"
                 name="password"
                 required>
        </p>
      </div>
      <div class="panel">
        <input class="button" type="submit" value="Log in">
        <a class="link" href="${pageContext.request.contextPath}/drivers/add">Register</a>
      </div>
    </form>
  </main>
</body>
</html>
