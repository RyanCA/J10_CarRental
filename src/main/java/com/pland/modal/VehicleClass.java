package com.pland.modal;

public class VehicleClass {
	
	private String name;
	private String description;
	private float dailyprice;
	
	public VehicleClass(String name, String description, float dailyprice){
		super();
		this.name = name;
		this.description = description;
		this.dailyprice = dailyprice;
	}
	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getDailyprice() {
		return dailyprice;
	}

	public void setDailyprice(float dailyprice) {
		this.dailyprice = dailyprice;
	}

	

}
