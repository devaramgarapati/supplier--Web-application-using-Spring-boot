package com.neha.vendor.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.neha.vendor.entities.vendor;
import com.neha.vendor.repos.vendorRepository;

@RestController
@CrossOrigin
public class vendorRESTController {
	@Autowired
	vendorRepository vendorrepository;
	
	@GetMapping
	public List<vendor> getAllVendors(){
		return vendorrepository.findAll();
	}
	
	@PostMapping
	public vendor saveVendor(@RequestBody vendor vendor1) {
		return vendorrepository.save(vendor1);
		
	}
	
	@DeleteMapping("/{id}")
	public void deleteVendor(@PathVariable("id") int id) {
		vendorrepository.deleteById(id);
	}
	
	@GetMapping("/{id}")
	public vendor getVendorByID(@PathVariable("id") int id) {
		return vendorrepository.findById(id).get();
		
	}
	
}
