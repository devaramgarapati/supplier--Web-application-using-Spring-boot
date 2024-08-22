package com.neha.vendor.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neha.vendor.entities.vendor;
import com.neha.vendor.repos.vendorRepository;
@Service
public class vendorServiceImpl implements vendorService {
	@Autowired
	private vendorRepository repository;
	
	
	@Override
	public vendor saveVendor(vendor vendor) {
		return repository.save(vendor);
	}

	@Override
	public vendor updateVendor(vendor vendor) {
		return repository.save(vendor);
	}

	@Override
	public void deleteVendor(vendor vendor) {
		repository.delete(vendor);
	}

	@Override
	public vendor getVendorByID(int id) {
		return repository.findById(id).get();
	}

	@Override
	public List<vendor> getAllVendors() {
		return repository.findAll();
	}

}
