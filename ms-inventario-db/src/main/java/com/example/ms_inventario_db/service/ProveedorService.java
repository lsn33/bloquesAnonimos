package com.example.ms_inventario_db.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ms_inventario_db.model.dto.ProveedorDTO;
import com.example.ms_inventario_db.model.entities.Proveedor;
import com.example.ms_inventario_db.model.repository.ProveedorRepository;

@Service
public class ProveedorService {

    @Autowired
    private ProveedorRepository proveedorRepository;

    public ProveedorDTO translateEntityToDto(Proveedor proveedor) {
        ProveedorDTO dto = new ProveedorDTO();
        dto.setIdProveedor(proveedor.getIdProveedor());
        dto.setNombre(proveedor.getNombre());
        dto.setEmail(proveedor.getEmail());
        dto.setTelefono(proveedor.getTelefono());
        return dto;
    }

    public ProveedorDTO findProveedorById(Integer id) {
        Optional<Proveedor> proveedor = proveedorRepository.findById(id);
        return proveedor.map(this::translateEntityToDto).orElse(new ProveedorDTO());
    }
}