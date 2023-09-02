<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="styles.jsp"%>
    <title>Register</title>
</head>
<body>
    <main class="interaction-form">
        <form action="${pageContext.request.contextPath}/drivers/add" method="post">
            <div class="table">
                <p class="tabled-row">
                    <label class="tabled" for="name">Name:</label>
                    <input
                            class="tabled"
                            type="text"
                            id="name"
                            placeholder="Enter your name"
                            name="name">
                </p>
                <p class="tabled-row">
                    <label class="tabled" for="licenseNumber">License number:</label>
                    <input
                            class="tabled"
                            type="text"
                            id="licenseNumber"
                            placeholder="Enter your license number"
                            name="licenseNumber">
                </p>
                <p class="tabled-row">
                    <label class="tabled" for="login">Login:</label>
                    <input class="tabled"
                           type="text"
                           id="login"
                           placeholder="Enter your login"
                           name="login">
                </p>
                <p class="tabled-row">
                    <label class="tabled" for="password">Password:</label>
                    <input class="tabled"
                           type="password"
                           id="password"
                           placeholder="Enter your password"
                           name="password">
                </p>
            </div>
            <div class="panel">
                <input class="button" type="submit" value="Register">
            </div>
        </form>
    </main>
</body>
</html>
