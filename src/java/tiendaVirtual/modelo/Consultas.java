/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tiendavirtual.modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;



/**
 *
 * @author Jorge
 */
public class Consultas extends Conexion{
    
    public boolean InicioSesion(String Mail, String Password) throws SQLException{
       
        Statement st= con.createStatement();
        String consulta = "SELECT * FROM tbl_usuario";
        ResultSet rs = st.executeQuery(consulta);
        while (rs.next()) {            
            Cliente ai = new Cliente() {};
            ai.setUsu_mail(rs.getString("usu_mail"));
            ai.setUsu_pass(rs.getString("usu_pass"));
            if (Mail.equals(ai.getUsu_mail()) && Password.equals(ai.getUsu_pass())) {
                return true;
            }
        }
        
        return false;
    }
    
    public boolean InicioSesionAdmin(String adm_mail, String adm_pass) throws SQLException{
       
        Statement st= con.createStatement();
        String consulta = "SELECT * FROM tbl_admin";
        ResultSet rs = st.executeQuery(consulta);
        while (rs.next()) {            
            Admin ai = new Admin();
            ai.setAdm_mail(rs.getString("adm_mail"));
            ai.setAdm_pass(rs.getString("adm_pass"));
            if (adm_mail.equals(ai.getAdm_mail()) && adm_pass.equals(ai.getAdm_pass())) {
                return true;
            }
        }
        
        return false;
    }
    
    public boolean RegistrarUsuarios(Cliente ai){
    
       String Consulta = "insert into tbl_usuario (usu_nombre, usu_apellidos, usu_nif, usu_dire, usu_mail, usu_pass) value(?,?,?,?,?,?) ";
       
        try {
            PreparedStatement pst = con.prepareStatement(Consulta);
                pst.setString(1, ai.getUsu_nombre());
                pst.setString(2, ai.getUsu_apellidos());
                pst.setString(3, ai.getUsu_nif());
                pst.setString(4, ai.getUsu_dire());
                pst.setString(5, ai.getUsu_mail());
                pst.setString(6, ai.getUsu_pass());
            
            int n = pst.executeUpdate();
            if (n != 0) {
                return true;
            } else {
                return false;
            }
        } catch (Exception e) {
            return false;
        }
    }
    
    
    public void mostrar (ArrayList lista){
        String consulta = "select * from tbl_usuario";
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery(consulta);
            while (rs.next()) {
                Cliente ai = new Cliente();
                ai.setUsu_id(rs.getInt("usu_id"));
                ai.setUsu_nombre(rs.getString("usu_nombre"));
                ai.setUsu_apellidos(rs.getString("usu_apellidos"));
                ai.setUsu_nif(rs.getString("usu_nif"));
                ai.setUsu_dire(rs.getString("usu_dire"));
                ai.setUsu_mail(rs.getString("usu_mail"));
                ai.setUsu_pass(rs.getString("usu_pass"));
                lista.add(ai);            
            }
          } catch (Exception e) {
        }
    }
}
    
    
