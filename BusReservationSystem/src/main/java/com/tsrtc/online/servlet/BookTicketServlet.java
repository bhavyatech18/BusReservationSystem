package com.tsrtc.online.servlet;
import java.io.IOException;
import java.util.List;

import com.tsrtc.online.dao.BookingDAO;
import com.tsrtc.online.dao.BusDAO;
import com.tsrtc.online.dao.CustomerDAO;
import com.tsrtc.online.model.Customer;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BookTicketServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
        int busId = Integer.parseInt(req.getParameter("busId"));
        String name = req.getParameter("name");
        int phone = Integer.parseInt(req.getParameter("phone"));
        int seats = Integer.parseInt(req.getParameter("seats"));

        BusDAO bdao = new BusDAO();
        if(bdao.updateSeats(busId,seats)){
            CustomerDAO cdao = new CustomerDAO();
            int custId = cdao.addCustomer(new Customer(name,phone));
            BookingDAO bookingDAO = new BookingDAO();
            int resId = bookingDAO.addBooking(busId,custId,seats);
            req.setAttribute("resId", resId);
            req.getRequestDispatcher("bookingSuccess.jsp").forward(req, resp);
        }else{
            resp.getWriter().println("Booking failed. Seats not available.");
        }
    }
}
