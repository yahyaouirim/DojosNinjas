package com.example.DojosNinjas.Services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.DojosNinjas.Models.Dojo;
import com.example.DojosNinjas.Repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	DojoRepository dojoRepo;
	
	public List<Dojo> All(){
		return dojoRepo.findAll();
	}
	
	public Dojo create(Dojo d) {
		return dojoRepo.save(d);
	}
	public Dojo find(Long id)	{
		Optional<Dojo> result = dojoRepo.findById(id) ;
		if(result.isPresent()) {
			return result.get();
		}
		else {
			return null;
		}
	}
	
	
}
