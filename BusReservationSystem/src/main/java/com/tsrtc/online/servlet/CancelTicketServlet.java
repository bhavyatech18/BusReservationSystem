package com.tsrtc.online.servlet;

import java.io.IOException;

import com.tsrtc.online.dao.BookingDAO;
import com.tsrtc.online.dao.BusDAO;
import com.tsrtc.online.model.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class CancelTicketServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int resId = Integer.parseInt(req.getParameter("reservationId"));
        BookingDAO bookingDAO = new BookingDAO();
        Booking b = bookingDAO.getBooking(resId);

        if (b != null) {
            // Free up seats
            BusDAO bdao = new BusDAO();
            bdao.cancelSeats(b.getBus().getBusId(), b.getSeatsTakenByCustomer());
            bookingDAO.cancelBooking(resId);

            // Set attribute for JSP
            req.setAttribute("message", "Ticket Cancelled Successfully!");
            req.setAttribute("success", true);
        } else {
            req.setAttribute("message", "Invalid Reservation ID!");
            req.setAttribute("success", false);
        }

        // Forward to JSP
        req.getRequestDispatcher("cancelResult.jsp").forward(req, resp);
    }
}
