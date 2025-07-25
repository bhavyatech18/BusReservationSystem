<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Ticket</title>
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
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 350px;
            text-align: center;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 15px;
            text-align: left;
            color: #34495e;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }
        input[type="submit"] {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
        a {
            display: inline-block;
            margin-top: 15px;
            padding: 8px 15px;
            text-decoration: none;
            background-color: #95a5a6;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>

    <div class="form-container">
        <h2>Book Your Ticket</h2>
        <form action="bookTicket" method="post">
            <label for="busId">Bus ID:</label>
            <input type="text" id="busId" name="busId">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name">

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone">

            <label for="seats">Seats:</label>
            <input type="text" id="seats" name="seats">

            <input type="submit" value="Book">
        </form>
        <a href="index.jsp">Home</a>
    </div>

</body>
</html>
