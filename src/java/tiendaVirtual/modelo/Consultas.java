/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tiendaVirtual.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Jorge
 */
public class Consultas extends Conexion{
    
    
    public boolean Autenticacion(String correo,String pass) throws SQLException{
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
             String Consulta = "Select * from tbl_usuario where usu_mail = ? and usu_pass = ?";
             pst = getConexion().prepareStatement(Consulta);
             pst.setString(1, correo);
             pst.setString(2, pass);
             rs = pst.executeQuery();
             
             if (rs.absolute(1)){
                 return true;
             }
             
        }catch (Exception e) {
            System.err.println("Error"+e);
        }finally {
           
            try {
                
                 if (getConexion() != null) getConexion().close(); 
                 if(pst != null) rs.close();
              
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
        
        }
       
    public boolean registrar(String nombre, String apellidos, String nif, String direccion, String correo, String pass){
        
        PreparedStatement pst = null;
        
            try {
                String consulta = "insert into tbl_usuario(usu_nombre, usu_apellidos, usu_nif, usu_dire, usu_mail, usu_pass) value(?,?,?,?,?,?) ";
                pst = getConexion().prepareStatement(consulta);
                pst.setString(1, nombre);
                pst.setString(2, apellidos);
                pst.setString(3, nif);
                pst.setString(4, direccion);
                pst.setString(5, correo);
                pst.setString(6, pass);
                
                
                
                
                if(pst.executeUpdate() ==1){
                
                    return true;
                }
                
        } catch (Exception e) {
                System.err.println("Error"+e);
            
        }finally{
            
                try {
                    if(getConexion() != null) getConexion().close();
                    if(pst != null) pst.close();
                } catch (Exception e) {
                }
            
            }
        
            return false;
    }

    public boolean Autenticacionadm(String correoadm,String passadm) throws SQLException{
        
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
             String Consulta = "Select * from tbl_admin where adm_mail = ? and adm_pass = ?";
             pst = getConexion().prepareStatement(Consulta);
             pst.setString(1, correoadm);
             pst.setString(2, passadm);
             rs = pst.executeQuery();
             
             if (rs.absolute(1)){
                 return true;
             }
             
        }catch (Exception e) {
            System.err.println("Error"+e);
        }finally {
           
            try {
                
                 if (getConexion() != null) getConexion().close(); 
                 if(pst != null) rs.close();
              
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
        
        }
  
    
    
}