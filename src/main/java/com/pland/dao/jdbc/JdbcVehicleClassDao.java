package com.pland.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;

import com.pland.dao.intf.VehicleClassDao;
import com.pland.modal.VehicleClass;

public class JdbcVehicleClassDao implements VehicleClassDao{
	
	/**
	 * if the variable is defined in configuration bean file and the class file 
	 * has either constructor method or set method, then Dependency Injection 
	 * will be applied 
	 */
	@Autowired
	private DataSource dataSource;
	 
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	public VehicleClass findById(int id){
		 
		String sql = "SELECT * FROM VEHICLECLASS WHERE ID = ?";
 
		Connection conn = null;
 
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			VehicleClass vehicleClass = null;
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				vehicleClass = new VehicleClass(
						rs.getString("NAME"),
						rs.getString("description"),
						rs.getFloat("dailyprice")
				);
			}
			rs.close();
			ps.close();
			return vehicleClass;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
				conn.close();
				} catch (SQLException e) {}
			}
		}
	}
	
	public ArrayList<VehicleClass> findAll(){
		 
		String sql = "SELECT * FROM VEHICLECLASS";
 
		Connection conn = null;
		ArrayList<VehicleClass> list = new ArrayList<VehicleClass>();
 
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			VehicleClass vehicleClass = null;
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				vehicleClass = new VehicleClass(
					rs.getString("NAME"),
					rs.getString("description"),
					rs.getFloat("dailyprice")
				);
				list.add(vehicleClass);
			}
			rs.close();
			ps.close();
			return list;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		} finally {
			if (conn != null) {
				try {
				conn.close();
				} catch (SQLException e) {}
			}
		}
	}

}
