package com.pland.dao.intf;

import java.util.ArrayList;

import com.pland.modal.VehicleClass;

public interface VehicleClassDao {
	
	public VehicleClass findById(int id);
	
	public ArrayList<VehicleClass> findAll();

}
