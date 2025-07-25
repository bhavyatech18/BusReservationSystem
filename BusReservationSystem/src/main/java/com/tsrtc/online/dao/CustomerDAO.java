package com.tsrtc.online.dao;
import java.sql.*;
import com.tsrtc.online.model.Customer;

public class CustomerDAO {
    public int addCustomer(Customer c) {
        int id=0;
        try(Connection con = DBUtil.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO customer(customerName,customerPhoneNumber) VALUES(?,?)", Statement.RETURN_GENERATED_KEYS)) {
            ps.setString(1,c.getName());
            ps.setString(2,String.valueOf(c.getCustphoneNumber()));
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()) id = rs.getInt(1);
        }catch(Exception e){ e.printStackTrace(); }
        return id;
    }
}
