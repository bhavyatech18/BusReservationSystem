<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .message-container {
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            text-align: center;
            max-width: 400px;
        }
        p {
            font-size: 18px;
            color: #27ae60;
            font-weight: bold;
            margin-bottom: 25px;
        }
        a {
            display: inline-block;
            padding: 10px 25px;
            background-color: #3498db;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <div class="message-container">
        <p>Booking successful! Your Reservation ID is: <%= request.getAttribute("resId") %></p>
        <a href="index.jsp">Home</a>
    </div>

</body>
</html>
