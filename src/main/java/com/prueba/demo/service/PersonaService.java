package com.prueba.demo.service;

import java.util.List; 
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.prueba.demo.interfaceService.IPersonaService;
import com.prueba.demo.interfaces.IPersona;
import com.prueba.demo.model.Persona;

@Service
public class PersonaService implements IPersonaService{
	
	@Autowired
	private IPersona data;
	
	@Override
	public List<Persona> listar() {
		return (List<Persona>)data.findAll();
	}

	@Override
	public Optional<Persona> listarID(int id) {
		return data.findById(id);
	}

	@Override
	public int save(Persona p) {
		int respuesta = 0;
		Persona persona=data.save(p);
		if(!persona.equals(null)) {
			respuesta = 1;
		}
		return respuesta;
	}

	@Override
	public void delete(int id) {
		data.deleteById(id);
	}

}
