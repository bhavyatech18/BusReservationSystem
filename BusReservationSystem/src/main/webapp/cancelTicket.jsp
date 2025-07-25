<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cancel Ticket</title>
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
        .form-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 300px;
            text-align: center;
        }
        input[type="text"] {
            width: 90%;
            padding: 10px;
            margin: 15px 0 25px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            padding: 12px 30px;
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #c0392b;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Cancel Ticket</h2>
        <form action="cancelTicket" method="post">
            <input type="text" name="reservationId" placeholder="Reservation ID" required>
            <br>
            <input type="submit" value="Cancel">
        </form>
    </div>

</body>
</html>
