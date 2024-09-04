<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Online - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <!-- Include Bootstrap for styling -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <header class="bg-dark text-white p-3">
        <div class="container">
            <h1 class="display-4">Order Online</h1>
            <nav>
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="about.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="gallery.jsp">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="orderpage.jsp">Order Online</a></li>
                    <li class="nav-item"><a class="nav-link text-white" href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="container mt-5">
        <h2 class="text-center mb-4">Our Menu</h2>
        <div class="row">
            <!-- Example Menu Items -->
            <c:forEach var="item" items="${menuItems}">
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img class="card-img-top" src="${item.image}" alt="${item.name}">
                        <div class="card-body">
                            <h5 class="card-title">${item.name}</h5>
                            <p class="card-text">${item.description}</p>
                            <p class="card-text"><strong>${item.price} LKR</strong></p>
                            <form action="CartController" method="post">
                                <input type="hidden" name="itemId" value="${item.id}">
                                <div class="form-group">
                                    <label for="quantity${item.id}">Quantity:</label>
                                    <input type="number" id="quantity${item.id}" name="quantity" value="1" min="1" class="form-control">
                                </div>
                                <button type="submit" class="btn btn-primary btn-block">Add to Cart</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <footer class="bg-dark text-white text-center p-3">
        <p>&copy; 2024 ABC Restaurant. All Rights Reserved.</p>
    </footer>

    <!-- Include jQuery and Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
