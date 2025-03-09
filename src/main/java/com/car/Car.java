package com.car;

public class Car {

	private int id;
	private String number;
	private String year;
	private String brand;
	private String model;
	private String type;
	
	public Car(int id, String number, String year, String brand, String model, String type) {
		this.id = id;
		this.number = number;
		this.year = year;
		this.brand = brand;
		this.model = model;
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
	
}
