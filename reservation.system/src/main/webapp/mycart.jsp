<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Cart - ABC Restaurant</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <header>
        <h1>My Cart</h1>
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
        <h2>Your Cart Items</h2>
        <table>
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td>${item.itemName}</td>
                        <td>${item.quantity}</td>
                        <td>${item.price}</td>
                        <td>${item.total}</td>
                        <td><a href="CartController?action=remove&itemId=${item.id}">Remove</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="cart-actions">
            <a href="orderpage.jsp">Continue Shopping</a>
            <a href="checkout.jsp">Checkout</a>
        </div>
    </section>
    <footer>
        <p>&copy; 2024 ABC Restaurant. All Rights Reserved.</p>
    </footer>
</body>
</html>
