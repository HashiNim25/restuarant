<%@ page import="com.res.model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Users</title>
</head>
<body>
    <h1>Manage Users</h1>
    
    <!-- Check if the 'users' attribute is not null before trying to display it -->
    <c:choose>
        <c:when test="${not empty users}">
            <table border="1">
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <% 
                    // Retrieve the list of users from the request attribute
                    List<User> users = (List<User>) request.getAttribute("users");
                    
                    // Iterate through the list and display each user
                    for (User user : users) {
                    %>
                        <tr>
                            <td><%= user.getUsername() %></td>
                            <td><%= user.getFullName() %></td>
                            <td><%= user.getEmail() %></td>
                            <td><%= user.getPhone() %></td>
                            <td><%= user.getStatus() %></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </c:when>
        <c:otherwise>
            <p>No users found.</p>
        </c:otherwise>
    </c:choose>
    
</body>
</html>
