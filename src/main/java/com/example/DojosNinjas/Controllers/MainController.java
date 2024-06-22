package com.example.DojosNinjas.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.DojosNinjas.Models.Dojo;
import com.example.DojosNinjas.Models.Ninja;
import com.example.DojosNinjas.Services.DojoService;
import com.example.DojosNinjas.Services.NinjaService;

@Controller
public class MainController {
	
	// Services
		@Autowired
		private NinjaService ninjas;
		@Autowired
		private DojoService dojos;
		
		// All Rendering GET Routes
		
		@GetMapping("/dojos/new")
		public String newDojoForm(@ModelAttribute("dojo") Dojo dojo) {
			return "newDojoForm.jsp";
		}
		@PostMapping("/dojos")
		public String createDojo(@ModelAttribute("dojo") Dojo dojo) {
			
			Dojo newDojo = dojos.create(dojo);
			System.out.printf("new id: %s", dojo.getId());
			
			return String.format("redirect:/dojos/%s",newDojo.getId());
		}
		
		
		@GetMapping("/ninjas/new")
		public String newNinjaForm(@ModelAttribute("ninja") Ninja ninja, Model model) {
			model.addAttribute("dojos", dojos.All());
			return "newNinjaForm.jsp";
		}
		@PostMapping("/ninjas")
		public String createNinja(@ModelAttribute("ninja") Ninja ninja) {
			ninja = ninjas.create(ninja);
			return "redirect:/dojos/" + ninja.getDojo().getId();
		}
		
		
		
		@GetMapping("/dojos/{id}")
		public String showDojo(@PathVariable("id") Long id, Model model) {
			System.out.printf("dojo id from url: %s",id);
			Dojo dojo = dojos.find(id);
			model.addAttribute("dojo", dojo);
			
			return "showDojo.jsp";
		}
		
		
		
		
		
}
