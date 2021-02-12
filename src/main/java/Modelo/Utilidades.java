/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

/**
 *
 * @author DAW2-PROFESOR
 */
public class Utilidades {
    public static ArrayList<Producto> getProductosTexto(String fichero) throws FileNotFoundException, IOException{
		ArrayList<Producto> productos = new ArrayList<Producto>();
		
		try {
			
			BufferedReader buffer = new BufferedReader(new InputStreamReader(new FileInputStream(fichero), "utf-8"));
			String linea;			
			try {
				
				while((linea = buffer.readLine())!=null) {
                                    String [] atributosProducto = linea.split(",");
		Producto prod = new Producto( Integer.parseInt(atributosProducto[0] ) , 
                                                                   atributosProducto[1],
                                                                    atributosProducto[2],
                                                                    atributosProducto[3],
                                                                    Float.parseFloat(atributosProducto[4]),
                                                                    Integer.parseInt(atributosProducto[5]));
                                  productos.add(prod);
                                                            
				 }
				
				buffer.close();
			} catch (IOException e) {
				
			}
		
		} catch (UnsupportedEncodingException e) {
			
		}
		return productos;		
	}
}
