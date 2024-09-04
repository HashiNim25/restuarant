<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ABC Restaurant - Home</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header class="bg-dark text-white">
        <div class="container">
            <h1>ABC Restaurant</h1>
            <nav>
                <ul class="nav">
                    <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="aboutpage.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="gallerypage.jsp">Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="orderpage.jsp">Order Online</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="container mt-5">
        <div class="text-center">
            <h2>Welcome to ABC Restaurant</h2>
            <p>Experience the best of Sri-Lankan cuisine right at your fingertips!</p>
        </div>

        <div class="row mt-5">
            <div class="col-lg-4 col-md-6">
                <div class="card">
                    <img src="images/dine_in.jpg" class="card-img-top" alt="Dine In">
                    <div class="card-body">
                        <h5 class="card-title">Dine In</h5>
                        <p class="card-text">Enjoy a meal at our cozy restaurant locations.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card">
                    <img src="images/delivery.jpg" class="card-img-top" alt="Delivery">
                    <div class="card-body">
                        <h5 class="card-title">Delivery</h5>
                        <p class="card-text">Get your favorite dishes delivered to your doorstep.</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="card">
                    <img src="images/takeaway.jpg" class="card-img-top" alt="Takeaway">
                    <div class="card-body">
                        <h5 class="card-title">Takeaway</h5>
                        <p class="card-text">Conveniently pick up your order on the go.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="search-bar mt-5">
            <form action="search.jsp" method="get" class="form-inline justify-content-center">
                <input type="text" name="query" class="form-control" placeholder="Search our services...">
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>
    </section>

    <footer class="bg-dark text-white text-center">
        <p>&copy; 2024 ABC Restaurant. All Rights Reserved.</p>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
