/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author DAW2-PROFESOR
 */
public class Producto {
    private int id;
    private String nombre, categoria, imagen;
    float precio;
    int unidadesPedidas;


    public Producto(int id, String nombre, String imagen, String categoria,  float precio, int unidadesPedidas) {
        this.id = id;
        this.nombre = nombre;
        this.categoria = categoria;
        this.imagen = imagen;
        this.precio = precio;
        this.unidadesPedidas = unidadesPedidas;

    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public String getImagen() {
        return imagen;
    }

    public float getPrecio() {
        return precio;
    }

    public int getUnidadesPedidas() {
        return unidadesPedidas;
    }
    
    
    
}
