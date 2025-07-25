<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Bus</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            text-align: center;
            margin: 50px;
        }
        h2 {
            color: #2c3e50;
            margin-bottom: 30px;
        }
        form {
            display: inline-block;
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        label {
            display: inline-block;
            width: 80px;
            text-align: right;
            margin-right: 10px;
            font-weight: bold;
            color: #34495e;
        }
        input[type="text"] {
            padding: 8px 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 14px;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #3498db;
            border: none;
            color: white;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #2980b9;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 8px 15px;
            text-decoration: none;
            background-color: #3498db;
            color: white;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>

    <h2>Search for Buses</h2>

    <form action="searchBus" method="post">
        <div>
            <label for="from">From:</label>
            <input type="text" name="from" id="from" required>
        </div>
        <div>
            <label for="to">To:</label>
            <input type="text" name="to" id="to" required>
        </div>
        <input type="submit" value="Search">
    </form>

    <br>
    <a href="index.jsp">Home</a>

</body>
</html>
