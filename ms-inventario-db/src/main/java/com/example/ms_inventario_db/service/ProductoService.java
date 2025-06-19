package com.example.ms_inventario_db.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.ms_inventario_db.model.dto.ProductoDTO;
import com.example.ms_inventario_db.model.entities.Producto;
import com.example.ms_inventario_db.model.repository.ProductoRepository;

@Service
public class ProductoService {

    @Autowired
    private ProductoRepository productoRepository;

    public ProductoDTO translateEntityToDto(Producto producto) {
        ProductoDTO dto = new ProductoDTO();
        dto.setIdProducto(producto.getIdProducto());
        dto.setNombre(producto.getNombre());
        dto.setDescripcion(producto.getDescripcion());
        dto.setPrecio(producto.getPrecio());
        dto.setStock(producto.getStock());
        dto.setProveedorId(producto.getProveedorId());
        return dto;
    }

    public ProductoDTO findProductoById(Long id) {
        Optional<Producto> producto = productoRepository.findById(id);
        return producto.map(this::translateEntityToDto).orElse(new ProductoDTO());
    }
}