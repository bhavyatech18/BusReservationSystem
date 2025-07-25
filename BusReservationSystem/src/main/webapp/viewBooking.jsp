<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View Booking</title>
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
        form {
            display: inline-block;
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        label {
            font-weight: bold;
        }
        input[type="text"] {
            padding: 8px;
            margin: 10px 0;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <h2>View Your Booking</h2>

    <form action="viewBooking" method="post">
        <label for="reservationId">Reservation ID:</label><br>
        <input type="text" id="reservationId" name="reservationId" required><br>
        <input type="submit" value="View Booking">
    </form>

    <br>
    <a href="index.jsp" style="
        display:inline-block;margin-top:20px;
        padding:10px 20px;
        background-color:#3498db;
        color:white;
        border-radius:5px;
        text-decoration:none;
        transition:background-color 0.3s ease;">Back to Home</a>

</body>
</html>
