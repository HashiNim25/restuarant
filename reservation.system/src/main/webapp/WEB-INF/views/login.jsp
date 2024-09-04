<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <form action="user" method="post">
        <input type="hidden" name="action" value="login">
        Username: <input type="text" name="username"><br>
        Password: <input type="password" name="password"><br>
        <button type="submit">Login</button>
    </form>
    <c:if test="${not empty errorMessage}">
        <p style="color: red;"><c:out value="${errorMessage}"/></p>
    </c:if>
</body>
</html>
