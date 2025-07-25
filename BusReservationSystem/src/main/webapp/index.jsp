<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus Reservation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
           
            background-size: cover;
            text-align: center;
            margin: 0;
            padding: 0;
            color: #fff;
        }
        .overlay {
            background-color: rgba(0, 0, 0, 0.5); /* dark overlay for readability */
            min-height: 100vh;
            padding: 50px 20px;
        }
        h1 {
            font-size: 50px;
            margin-bottom: 40px;
            color: #f1f1f1;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
        }
        a {
            display: inline-block;
            margin: 15px;
            padding: 12px 25px;
            text-decoration: none;
            background-color: #3498db;
            color: #fff;
            font-size: 18px;
            border-radius: 60px;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 6px rgba(0,0,0,0.3);
        }
        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <div class="overlay">
        <h1>Welcome to Bus Reservation</h1>
        <a href="viewBuses.jsp">View All Buses</a>
        <a href="searchBus.jsp">Search Buses</a>
        <a href="bookingForm.jsp">Book Ticket</a>
        <a href="cancelTicket.jsp">Cancel Ticket</a>
        <a href="viewBooking.jsp">View Booking</a>
    </div>

</body>
</html>
