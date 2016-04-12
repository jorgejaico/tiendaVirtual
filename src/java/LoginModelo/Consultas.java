/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LoginModelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
        

/**
 *
 * @author 93186.joan23
 */
public class Consultas extends Conexion{
    
    public boolean Autenticacion(String user ,String pass) throws SQLException{
    
        Statement st = con.createStatement();
        ResultSet rs = null;
        String Consulta = "SELECT * FROM tbl_usuarios";
       
        rs = st.executeQuery(Consulta);
        
        while(rs.next()){
            
            if(user.equals(rs.getString("usu_mail"))&& pass.equals(rs.getString("usu_pass")));
                return true;
            
        }
                
        
        return false;
    }
    
    public static void main(String[] args) throws SQLException {
    Consultas con = new Consultas();
    System.out.println(con.Autenticacion("",""));
}
}

