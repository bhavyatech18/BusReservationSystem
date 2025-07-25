package com.tsrtc.online.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.tsrtc.online.dao.BusDAO;
import com.tsrtc.online.model.Bus;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchBusServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
//        String from = req.getParameter("from");
//        String to = req.getParameter("to");
//       // String date = req.getParameter("date");
//        BusDAO dao = new BusDAO();
//        List<Bus> list = dao.searchBuses(from,to);
//        req.setAttribute("busList", list);
//        req.getRequestDispatcher("viewBuses.jsp").forward(req, resp);
    	
    	
    	
//    	String from = req.getParameter("from");
//    	String to = req.getParameter("to");
//
//    	BusDAO dao = new BusDAO();
//    	List<Bus> list = dao.searchBuses(from, to);
//
//    	// set response content type
//    	resp.setContentType("text/html;charset=UTF-8");
//
//    	// get writer
//    	PrintWriter out = resp.getWriter();
//
//    	// start writing HTML response
//    	out.println("<!DOCTYPE html>");
//    	out.println("<html>");
//    	out.println("<head>");
//    	out.println("<meta charset='UTF-8'>");
//    	out.println("<title>Bus Results</title>");
//    	out.println("</head>");
//    	out.println("<body>");
//    	out.println("<h2>Available Buses</h2>");
//
//    	if (list == null || list.isEmpty()) {
//    	    out.println("<p>No buses found from " + from + " to " + to + ".</p>");
//    	} else {
//    	    out.println("<table border='1' cellpadding='5' cellspacing='0'>");
//    	    out.println("<tr><th>ID</th><th>From</th><th>To</th><th>Available Tickets</th><th>Cost</th></tr>");
//    	    for (Bus bus : list) {
//    	        out.println("<tr>");
//    	        out.println("<td>" + bus.getBusId() + "</td>");
//    	        out.println("<td>" + bus.getSource() + "</td>");
//    	        out.println("<td>" + bus.getDestination() + "</td>");
//    	        out.println("<td>" + bus.getAvailableSeats() + "</td>");
//    	        out.println("<td>" + bus.getTicketCost() + "</td>");
//    	        out.println("</tr>");
//    	    }
//    	    out.println("</table>");
//    	}
//
//    	out.println("</body>");
//    	out.println("</html>");
//
//    	out.close();
    	
    	String from = req.getParameter("from");
    	String to = req.getParameter("to");

    	BusDAO dao = new BusDAO();
    	List<Bus> list = dao.searchBuses(from, to);

    	// store results in request
    	req.setAttribute("busList", list);
    	req.setAttribute("from", from);
    	req.setAttribute("to", to);

    	// forward to a JSP page that will render results
    	req.getRequestDispatcher("searchResults.jsp").forward(req, resp);


    }
}
