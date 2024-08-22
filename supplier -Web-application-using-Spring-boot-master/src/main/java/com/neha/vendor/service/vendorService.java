package com.neha.vendor.service;

import java.util.List;

import com.neha.vendor.entities.vendor;

public interface vendorService {
	
	vendor saveVendor(vendor vendor);
	
	vendor updateVendor(vendor vendor);
	
	void deleteVendor(vendor vendor);
	
	vendor getVendorByID(int id);
	
	List<vendor> getAllVendors();

}
