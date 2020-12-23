package com.prueba.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.prueba.demo.interfaceService.IPersonaService;
import com.prueba.demo.model.Persona;


@org.springframework.stereotype.Controller
@RequestMapping
public class Controller {

	@Autowired
	private IPersonaService service;
	
	@GetMapping("/listar")
	public String listar(Model model) {
		List<Persona>persona=service.listar();
		model.addAttribute("persona", persona);
		return "lista"; 
	}
	
	@GetMapping("/nuevo")
	public String agregar(Model model) {
		model.addAttribute("persona",new Persona());
		return "formulario";
	}
	
	@PostMapping("/save")
	public String save(@Validated Persona p, Model model) {
		service.save(p);
		return "redirect:/listar";
	}
	
	@GetMapping("/editar/{id}") 
	public String editar(@PathVariable int id,Model model) {
		Optional<Persona>persona=service.listarID(id);
		model.addAttribute("persona",persona);
		return "formulario";
	}
	
	@GetMapping("/eliminar/{id}")
	public String delete(Model model, @PathVariable int id) {
		service.delete(id);
		return "redirect:/listar";
	}
	
}
