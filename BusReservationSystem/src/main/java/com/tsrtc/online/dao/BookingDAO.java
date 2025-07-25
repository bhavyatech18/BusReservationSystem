package com.tsrtc.online.dao;
import java.sql.*;
import com.tsrtc.online.model.Booking;

public class BookingDAO {
    public int addBooking(int busId,int customerId,int seats){
        int resId = 0;
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO booking(busId,customerId,seatsTakenByCustomer) VALUES(?,?,?)", Statement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1,busId);
            ps.setInt(2,customerId);
            ps.setInt(3,seats);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()) resId = rs.getInt(1);
        } catch(Exception e){ e.printStackTrace(); }
        return resId;
    }

    public Booking getBooking(int reservationId){
        Booking b = null;
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "SELECT booking.*,bus.busFrom,bus.busTo FROM booking JOIN bus ON booking.busId=bus.busId WHERE bookingId=?")) {
            ps.setInt(1,reservationId);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                b = new Booking(
                    new com.tsrtc.online.model.Bus(
                        rs.getInt("busId"),
                        rs.getString("busFrom"),
                        rs.getString("busTo"),
                        0,0),
                    null,
                    rs.getInt("seatsTakenByCustomer"));
                b.setBookingId(reservationId);
            }
        }catch(Exception e){ e.printStackTrace(); }
        return b;
    }

    public boolean cancelBooking(int reservationId){
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement("DELETE FROM booking WHERE reservationId=?")) {
            ps.setInt(1,reservationId);
            return ps.executeUpdate()>0;
        }catch(Exception e){ e.printStackTrace(); }
        return false;
    }
}
