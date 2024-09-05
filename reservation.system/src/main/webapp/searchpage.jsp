<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header>
        <h1>Search Results</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About Us</a></li>
                <li><a href="gallery.jsp">Gallery</a></li>
                <li><a href="orderpage.jsp">Order Online</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </header>
    <section>
        <h2>Results for "${query}"</h2>
        <ul>
            <c:forEach var="result" items="${searchResults}">
                <li><a href="${result.url}">${result.title}</a></li>
            </c:forEach>
        </ul>
    </section>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All Rights Reserved.</p>
    </footer>
</body>
</html>
