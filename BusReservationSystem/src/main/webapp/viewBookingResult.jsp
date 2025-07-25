<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.tsrtc.online.model.Booking" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            margin: 50px;
        }
        h2 {
            color: #2c3e50;
        }
        .booking-details {
            display: inline-block;
            margin-top: 30px;
            background-color: #ffffff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            text-align: left;
        }
        .booking-details p {
            margin: 10px 0;
            font-size: 18px;
            color: #2c3e50;
        }
        .button-container {
            margin-top: 60px; /* pushes buttons further down */
        }
        .button-container a {
            display: inline-block;
            margin: 10px 15px;
            padding: 12px 24px;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .button-container a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <h2>Your Booking Details</h2>

    <%
        Booking b = (Booking) request.getAttribute("booking");
        if (b != null) {
    %>
        <div class="booking-details">
            <p><strong>Reservation ID:</strong> <%= b.getBookingId() %></p>
            <p><strong>From:</strong> <%= b.getBus().getSource() %></p>
            <p><strong>To:</strong> <%= b.getBus().getDestination() %></p>
            <p><strong>Seats Booked:</strong> <%= b.getSeatsTakenByCustomer() %></p>
        </div>
    <%
        } else {
    %>
        <p style="color:red; font-size:18px;">Invalid Reservation ID or No Booking Found!</p>
    <%
        }
    %>

    <!-- Buttons placed well below -->
    <div class="button-container">
        <a href="viewBooking.jsp">Back to Search</a>
        <a href="index.jsp">Home</a>
    </div>

</body>
</html>
