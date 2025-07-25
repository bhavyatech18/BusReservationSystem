<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.tsrtc.online.model.Bus" %>

<%
    List<Bus> busList = (List<Bus>) request.getAttribute("busList");
    String from = (String) request.getAttribute("from");
    String to = (String) request.getAttribute("to");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
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
        table {
            margin: 0 auto;
            border-collapse: collapse;
            width: 80%;
            background: #ffffff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #3498db;
            color: white;
            font-size: 16px;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #eaf3fc;
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

    <h2>Available Buses from <%= from %> to <%= to %></h2>

    <%
        if (busList == null || busList.isEmpty()) {
    %>
        <p>No buses found for your search.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>ID</th>
                <th>From</th>
                <th>To</th>
                <th>Available Seats</th>
                <th>Fare</th>
            </tr>
            <%
                for (Bus bus : busList) {
            %>
            <tr>
                <td><%= bus.getBusId() %></td>
                <td><%= bus.getSource() %></td>
                <td><%= bus.getDestination() %></td>
                <td><%= bus.getAvailableSeats() %></td>
                <td><%= bus.getTicketCost() %></td>
            </tr>
            <% } %>
        </table>
    <% } %>

    <a href="index.jsp">Home</a>

</body>
</html>
