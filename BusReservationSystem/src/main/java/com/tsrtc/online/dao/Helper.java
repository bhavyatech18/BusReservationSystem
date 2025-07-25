package com.tsrtc.online.dao;

import java.util.List;

import com.tsrtc.online.model.Bus;

public class Helper {

	public static void main(String[] args) {
		BusDAO busDao =new BusDAO();
		List<Bus> buses=busDao.getAllBuses();
		System.out.println("List size is "+buses.size());
	 for(Bus bus:buses)
	 {
		String ans= bus.toString();
		System.out.println(ans);
	 }

	}

}
