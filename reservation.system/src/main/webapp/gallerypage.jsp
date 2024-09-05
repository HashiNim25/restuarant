<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Gallery - ABC Restaurant</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header class="bg-dark text-white">
        <div class="container">
            <h1>Gallery</h1>
            <nav>
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="gallery.jsp">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="orderpage.jsp">Order Online</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="container mt-5">
        <h2 class="text-center">Our Gallery</h2>
        <div class="gallery row mt-4">
            <c:forEach var="image" items="${galleryImages}">
                <div class="col-md-4 gallery-item">
                    <img src="${image.src}" alt="${image.alt}" class="img-fluid">
                    <p>${image.description}</p>
                </div>
            </c:forEach>
        </div>
    </section>

    <footer class="bg-dark text-white text-center">
        <p>&copy; 2024 ABC Restaurant. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
