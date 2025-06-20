package com.example.ms_inventario_db.model.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class ProductoDTO {

    private Long idProducto;
    private String nombre;
    private String descripcion;
    private Float precio;
    private int stock;
    private Integer proveedorId;
    private ProveedorDTO proveedor; 
    

}
