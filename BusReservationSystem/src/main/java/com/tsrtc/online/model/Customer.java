package com.tsrtc.online.model;

public class Customer {
	private int customerId;
	private String name;
	private int CustphoneNumber;

	public Customer() {
	}

	public Customer(int customerId, String name, int custphoneNumber) {
		super();
		this.customerId = customerId;
		this.name = name;
		CustphoneNumber = custphoneNumber;
	}

	public Customer(String name, int custphoneNumber) {
		super();
		this.name = name;
		CustphoneNumber = custphoneNumber;
	}

	public Customer(int customerId, String name) {
		this.customerId = customerId;
		this.name = name;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCustphoneNumber() {
		return CustphoneNumber;
	}

	public void setCustphoneNumber(int custphoneNumber) {
		CustphoneNumber = custphoneNumber;
	}

}
