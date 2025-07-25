<%@ page import="java.util.List" %>
<%@ page import="com.tsrtc.online.dao.BusDAO" %>
<%@ page import="com.tsrtc.online.model.Bus" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Buses</title>
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
        table {
            margin: 30px auto;
            border-collapse: collapse;
            width: 80%;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }
        th {
            background-color: #3498db;
            color: #ffffff;
            font-weight: bold;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        a {
            display: inline-block;
            margin: 10px;
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

    <h2>Available Buses</h2>

    <%
        BusDAO dao = new BusDAO();
        List<Bus> buses = dao.getAllBuses();
        if (buses == null) {
    %>
        <p>Bus list is NULL - no data fetched.</p>
    <%
        } else if (buses.isEmpty()) {
    %>
        <p>No buses found in the database.</p>
    <%
        } else {
    %>
        <table>
            <tr>
                <th>Bus ID</th>
                <th>From</th>
                <th>To</th>
                <th>Seats</th>
                <th>Fare</th>
            </tr>
            <%
                for (Bus b : buses) {
            %>
            <tr>
                <td><%= b.getBusId() %></td>
                <td><%= b.getSource() %></td>
                <td><%= b.getDestination() %></td>
                <td><%= b.getAvailableSeats() %></td>
                <td><%= b.getTicketCost() %></td>
            </tr>
            <%
                }
            %>
        </table>
    <%
        }
    %>

    <a href="index.jsp">Home</a>

</body>
</html>
