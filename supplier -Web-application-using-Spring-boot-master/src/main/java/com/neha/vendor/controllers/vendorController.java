package com.neha.vendor.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.neha.vendor.entities.vendor;
import com.neha.vendor.service.vendorService;

@Controller
public class vendorController {
	@Autowired
	vendorService service;
	
	@RequestMapping("/showCreate")
	public String showCreate(){
		return "createVendor";
	}
	@RequestMapping("/saveVendorForm")
	public String saveVendor(@ModelAttribute("vendor") vendor vendor,ModelMap modelMap) {
		vendor vendorsaved= service.saveVendor(vendor);
		String msg = "Vendor saved with id: "+ vendorsaved.getId();
		modelMap.addAttribute("msg",msg);
		return "createVendor";
	}
	@RequestMapping("/displayVendors")
	public String displayVendors(ModelMap modelMap) {	
		List<vendor> allVendors = service.getAllVendors();
		modelMap.addAttribute("vendors",allVendors);
		return "displayVendors";
	}
	@RequestMapping("/deleteVendor")
	public String deleteVendors(@RequestParam("id") int id,ModelMap modelMap) {	
		vendor vendorByID= new vendor();
		vendorByID.setId(id);
		service.deleteVendor(vendorByID);
		List<vendor> allVendors =service.getAllVendors();
		modelMap.addAttribute("vendors",allVendors);
		return "displayVendors";
	}
	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id") int id,ModelMap modelMap) {
		vendor vendor = service.getVendorByID(id);
		modelMap.addAttribute("vendor",vendor);
		return "updateVendor";
	}
	
	@RequestMapping("/updateVendorForm")
	public String updateLocation(@ModelAttribute("vendor") vendor vendor,ModelMap modelMap) {		
		service.updateVendor(vendor);
		List<vendor> vendors = service.getAllVendors();
		modelMap.addAttribute("vendors",vendors);
		return "displayVendors";
	
	}
}
