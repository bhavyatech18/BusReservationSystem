<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cancel Ticket Result</title>
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
        .message {
            font-size: 18px;
            padding: 15px;
            margin: 20px auto;
            border-radius: 5px;
            width: 50%;
        }
        .success {
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }
        .error {
            background-color: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
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

    <h2>Cancel Ticket Status</h2>

    <div class="message <%= (Boolean.TRUE.equals(request.getAttribute("success"))) ? "success" : "error" %>">
        <%= request.getAttribute("message") %>
    </div>

    <a href="index.jsp">Back to Home</a>

</body>
</html>
