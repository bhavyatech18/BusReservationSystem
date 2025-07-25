package com.tsrtc.online.servlet;
import java.io.IOException;
import java.util.List;

import com.tsrtc.online.dao.BookingDAO;
import com.tsrtc.online.dao.BusDAO;
import com.tsrtc.online.model.Booking;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ViewBookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
        int resId = Integer.parseInt(req.getParameter("reservationId"));
        BookingDAO bookingDAO = new BookingDAO();
        Booking b = bookingDAO.getBooking(resId);
        req.setAttribute("booking", b);
        req.getRequestDispatcher("viewBookingResult.jsp").forward(req, resp);

    }
}
