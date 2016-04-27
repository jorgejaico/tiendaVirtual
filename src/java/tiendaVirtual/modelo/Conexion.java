/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Tiendavirtual.modelo;

/**
 *
 * @author Jorge
 */
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jorge
 */
public class Conexion {    
   private String USERNAME = "root";
   private String PASSWORD = "";
   private String HOST = "localhost";
   private String PORT = "3306";
   private String DATABASE = "bd_tienda";
   private String CLASSNAME = "com.mysql.jdbc.Driver";
   private String URL = "jdbc:mysql://"+ HOST + ":" + PORT + "/" + DATABASE;
   Connection con;   
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e){
            System.err.println("Error "+e);
        } catch (SQLException e){
            System.err.println("Error "+e);
        }
    }

    public Connection getConexion(){
        return con;
    }
}
