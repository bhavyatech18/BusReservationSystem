package com.tsrtc.online.dao;
import java.sql.*;
import java.util.*;
import com.tsrtc.online.model.Bus;

public class BusDAO {
    public List<Bus> getAllBuses() {
        List<Bus> buses = new ArrayList<>();
       // buses.add(new Bus(1, "a","b",11,12));
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM bus")) {
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                buses.add(new Bus(
                    rs.getInt("busId"),
                    rs.getString("busFrom"),
                    rs.getString("busTo"),
                    rs.getInt("availableSeats"),
                    rs.getInt("ticketCost")
                ));
            }
        } catch(Exception e){ e.printStackTrace(); }
        return buses;
    }

	

    public List<Bus> searchBuses(String from, String to){
        List<Bus> buses = new ArrayList<>();
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "SELECT * FROM bus WHERE busFrom=? AND busTo=?")) {
            ps.setString(1, from);
            ps.setString(2, to);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                buses.add(new Bus(
                    rs.getInt("busId"),
                    rs.getString("busFrom"),
                    rs.getString("busTo"),
                    rs.getInt("availableSeats"),
                    rs.getInt("ticketCost")
                ));
            }
        }catch(Exception e){ e.printStackTrace(); }
        return buses;
    }
    
    


    public boolean updateSeats(int busId, int seats){
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE bus SET availableSeats = availableSeats-? WHERE busId=? AND availableSeats>=?")) {
            ps.setInt(1,seats);
            ps.setInt(2,busId);
            ps.setInt(3,seats);
            return ps.executeUpdate()>0;
        } catch(Exception e){ e.printStackTrace(); }
        return false;
    }

    public void cancelSeats(int busId, int seats){
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "UPDATE bus SET availableSeats = availableSeats+? WHERE busId=?")) {
            ps.setInt(1,seats);
            ps.setInt(2,busId);
            ps.executeUpdate();
        } catch(Exception e){ e.printStackTrace(); }
    }
}
