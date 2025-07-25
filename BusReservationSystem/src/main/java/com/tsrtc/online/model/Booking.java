package com.tsrtc.online.model;

import java.util.Date;

public class Booking {
    private int bookingId;
    private Bus bus;     
    private Customer customer;
    private int seatsTakenByCustomer; 
    
    
    public Booking() {
    }

    public Booking(int bookingId, Bus bus, Customer customer, int seatsTakenByCustomer) {
        this.bookingId = bookingId;
        this.bus = bus;
        this.customer = customer;
        this.seatsTakenByCustomer = seatsTakenByCustomer;
    }

    public Booking(Bus bus, Customer customer, int seatsTakenByCustomer) {
        this.bus = bus;
        this.customer = customer;
        this.seatsTakenByCustomer = seatsTakenByCustomer;
    }

    // --- Getters and Setters ---
    public int getBookingId() {
        return bookingId;
    }

    public void setBookingId(int bookingId) {
        this.bookingId = bookingId;
    }

    public Bus getBus() {
        return bus;
    }

    public void setBus(Bus bus) {
        this.bus = bus;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public int getSeatsTakenByCustomer() {
        return seatsTakenByCustomer;
    }

    public void setSeatsTakenByCustomer(int seatsTakenByCustomer) {
        this.seatsTakenByCustomer = seatsTakenByCustomer;
    }

    // --- toString() for debugging ---
    @Override
    public String toString() {
        return "Booking{" +
                "bookingId=" + bookingId +
                ", bus=" + (bus != null ? bus.getBusId() : null) +
                ", customer=" + (customer != null ? customer.getCustomerId() : null) +
                ", seatsTakenByCustomer=" + seatsTakenByCustomer +
                '}';
    }
}

