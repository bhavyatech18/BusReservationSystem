package com.tsrtc.online.model;

public class Bus {
    private int busId;
    private String source;
    private String destination;
    private int availableSeats;
    private int ticketCost;

    public Bus() {}

	public Bus(int busId, String source, String destination, int availableSeats, int ticketCost) {
		super();
		this.busId = busId;
		this.source = source;
		this.destination = destination;
		this.availableSeats = availableSeats;
		this.ticketCost = ticketCost;
	}

	public int getBusId() {
		return busId;
	}

	public void setBusId(int busId) {
		this.busId = busId;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public int getAvailableSeats() {
		return availableSeats;
	}

	public void setAvailableSeats(int availableSeats) {
		this.availableSeats = availableSeats;
	}

	public int getTicketCost() {
		return ticketCost;
	}

	public void setTicketCost(int ticketCost) {
		this.ticketCost = ticketCost;
	}

	@Override
	public String toString() {
		return "Bus [busId=" + busId + ", source=" + source + ", destination=" + destination + ", availableSeats="
				+ availableSeats + ", ticketCost=" + ticketCost + "]";
	}
    
   
}
