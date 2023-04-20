<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/drivers/add" method="post">
    Name: <input type="text" name="name">
    License number: <input type="text" name="licenseNumber"><br>
    Login: <input type="text" name="login"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Submit">
  </form>
</body>
</html>
