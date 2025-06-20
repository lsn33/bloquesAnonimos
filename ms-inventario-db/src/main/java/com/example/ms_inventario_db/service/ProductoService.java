package com.example.ms_inventario_db.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.ms_inventario_db.model.dto.ProductoDTO;
import com.example.ms_inventario_db.model.dto.ProveedorDTO;
import com.example.ms_inventario_db.model.entities.Producto;
import com.example.ms_inventario_db.model.entities.Proveedor;
import com.example.ms_inventario_db.model.repository.ProductoRepository;
import com.example.ms_inventario_db.model.repository.ProveedorRepository;

@Service
public class ProductoService {

    @Autowired
    private ProductoRepository productoRepository;

    @Autowired
    private ProveedorRepository proveedorRepository;

    public ProductoDTO findProductoById(Long id) {
        Optional<Producto> productoOpt = productoRepository.findById(id);
        ProductoDTO dto = null;

        if (productoOpt.isPresent()) {
            Producto producto = productoOpt.get();
            dto = translateEntityToDto(producto);

            Optional<Proveedor> proveedorOpt = proveedorRepository.findById(producto.getProveedorId());
            if (proveedorOpt.isPresent()) {
                Proveedor proveedor = proveedorOpt.get();
                ProveedorDTO proveedorDTO = translateProveedorToDto(proveedor);
                dto.setProveedor(proveedorDTO);  // incluir proveedor completo
            }
        }

        return dto;
    }

    public ProductoDTO translateEntityToDto(Producto producto) {
        ProductoDTO dto = new ProductoDTO();
        dto.setIdProducto(producto.getIdProducto());
        dto.setNombre(producto.getNombre());
        dto.setDescripcion(producto.getDescripcion());
        dto.setPrecio(producto.getPrecio());
        dto.setStock(producto.getStock());
        dto.setProveedorId(producto.getProveedorId());  // solo el ID
        return dto;
    }

    public Producto translateDtoToEntity(ProductoDTO dto) {
        Producto producto = new Producto();
        producto.setIdProducto(dto.getIdProducto());
        producto.setNombre(dto.getNombre());
        producto.setDescripcion(dto.getDescripcion());
        producto.setPrecio(dto.getPrecio());
        producto.setStock(dto.getStock());
        producto.setProveedorId(dto.getProveedorId());  // solo el ID
        return producto;
    }

    public ProveedorDTO translateProveedorToDto(Proveedor proveedor) {
        ProveedorDTO proveedorDTO = new ProveedorDTO();
        proveedorDTO.setIdProveedor(proveedor.getIdProveedor());
        proveedorDTO.setNombre(proveedor.getNombre());
        proveedorDTO.setEmail(proveedor.getEmail());
        proveedorDTO.setTelefono(proveedor.getTelefono());
        return proveedorDTO;
    }
}
