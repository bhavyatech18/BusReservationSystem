//package com.tsrtc.online.servlet;
//
//import java.io.IOException;
//import java.util.List;
//
//import com.tsrtc.online.dao.BusDAO;
//import com.tsrtc.online.model.Bus;
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//public class ViewBusesServlet extends HttpServlet {
//    protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException {
//        BusDAO dao = new BusDAO();
//        List<Bus> list = dao.getAllBuses();
//        
//        System.out.println("Size from DAO: " + list.size()); // debug
//        req.setAttribute("busList", list);
//        req.getRequestDispatcher("viewBuses.jsp").forward(req, resp);
//    }
//}
