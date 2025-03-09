package com.booking;

public class Booking {
	
	private int id;
	private int cusid;
	private String name;
	private String address;
	private String phone;
	private String destination;
	
	public Booking(int id, int cusid, String name, String address, String phone, String destination) {
		this.id = id;
		this.cusid = cusid;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.destination = destination;
	}

	public int getId() {
		return id;
	}

	public int getCusid() {
		return cusid;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getDestination() {
		return destination;
	}

}
