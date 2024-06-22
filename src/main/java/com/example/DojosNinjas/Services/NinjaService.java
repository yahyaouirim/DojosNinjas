package com.example.DojosNinjas.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.DojosNinjas.Models.Dojo;
import com.example.DojosNinjas.Models.Ninja;
import com.example.DojosNinjas.Repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	NinjaRepository ninjaRepo;
	 public List<Ninja> all() {
	        return ninjaRepo.findAll();
	    }
	    // creates a ninja
	    public Ninja create(Ninja ninja) {
	        return ninjaRepo.save(ninja);
	    }
	    // retrieves a ninja
	    public Ninja find(Long id) {
	        Optional<Ninja> result = ninjaRepo.findById(id);
	        if(result.isPresent()) {
	            return result.get();
	        } else {
	            return null;
	        }
	    }
	    // retrieves ninja's dojo
	    public List<Ninja> byDojo(Dojo dojo) {
	    	return ninjaRepo.findAllByDojo(dojo);
	    }
	

}
