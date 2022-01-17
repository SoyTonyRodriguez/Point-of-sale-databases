package classes;
import java.sql.*;
import javax.swing.JOptionPane;

public class Connection_DB {
    //Conexion Local
    public static Connection connect(){
        try {
            //Este metodo nos permite obtener la conexion a la base de datos
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/Tienda?useSSL=false", "root", "fridaa11");
            return cn;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Error en la conexión local" +e);
        }
        return (null);
    }
}
