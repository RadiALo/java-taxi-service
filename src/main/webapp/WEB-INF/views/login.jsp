<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Log In</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/login" method="post">
    Login: <input type="text" name="login" required><br>
    Password: <input type="password" name="password" required><br>
    <input type="submit" name="add">
  </form>
  <h1 style="color: red">${errorMsg}</h1>
  <a href="${pageContext.request.contextPath}/drivers/add">Create Driver</a>
</body>
</html>
