package SQL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConectionClass {

    private static final String URL = "jdbc:sqlserver://LAPTOP-7FRT4DBE\\MSSQLSERVER01:1433;databaseName=RRHH_IUD;encrypt=true;trustServerCertificate=true";
    private static final String USER = "servicio_app_user";
    private static final String PASSWORD = "AppJava*";

    public Connection conectar() {
        Connection con = null;
        try {
            con = DriverManager.getConnection(URL, USER, PASSWORD);
            if (con != null) {
                System.out.println("✅ Conexión realizada");
            }
        } catch (SQLException e) {
            System.out.println("❌ Error: " + e.getMessage());
        }
        return con;
    }


    public static void main(String[] args) {
        ConectionClass conexion = new ConectionClass();
        Connection con = conexion.conectar();
    }
}
