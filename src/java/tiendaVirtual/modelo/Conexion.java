/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tiendaVirtual.modelo;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Jorge
 */
public class Conexion
{
    
    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "bd_tienda";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+ HOST +":"+PORT+"/"+DATABASE;
    private Connection con;
     
       public Conexion() {
  
        try {
           Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.out.println("Error");
        } catch (SQLException e) {
            System.out.println("Error");
        }
}
       public Connection getConexion(){
           return con;
       }
       
}