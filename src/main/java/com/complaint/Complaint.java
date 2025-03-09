package com.complaint;

public class Complaint {
	
	private int id;
	private int cusid;
	private String type;
	private String date;
	private String complaint;
	
	
	public Complaint(int id, int cusid, String type, String date, String complaint) {
		this.id = id;
		this.cusid = cusid;
		this.type = type;
		this.date = date;
		this.complaint = complaint;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getCusid() {
		return cusid;
	}


	public void setCusid(int cusid) {
		this.cusid = cusid;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getComplaint() {
		return complaint;
	}


	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	
	
	
	
}
