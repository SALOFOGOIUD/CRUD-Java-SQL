package SQL;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

class FuncionarioDAO {
    private final ConectionClass conexion;
    public FuncionarioDAO() {
        conexion = new ConectionClass();
    }

    // INSERT
    public boolean insertar(Funcionario funcionario) {
        String sql = "INSERT INTO TbFuncionarios (TipoIdentificacion, NumeroIdentificacion, Nombres, Apellidos, EstadoCivil, Sexo, Direccion, Telefono, FechaNacimiento) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (Connection con = conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, funcionario.getTipoIdentificacion());
            ps.setLong(2, funcionario.getNumeroIdentificacion());
            ps.setString(3, funcionario.getNombres());
            ps.setString(4, funcionario.getApellidos());
            ps.setString(5, funcionario.getEstadoCivil());
            ps.setString(6, funcionario.getSexo());
            ps.setString(7, funcionario.getDireccion());
            ps.setString(8, funcionario.getTelefono());
            ps.setString(9, funcionario.getFechaNacimiento());

            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("Error al insertar: " + e.getMessage());
            return false;
        }
    }

    // UPDATE
    public boolean actualizar(Funcionario funcionario) {
        String sql = "UPDATE TbFuncionarios SET TipoIdentificacion=?, NumeroIdentificacion=?, Nombres=?, Apellidos=?, EstadoCivil=?, Sexo=?, Direccion=?, Telefono=?, FechaNacimiento=? WHERE FuncionarioID=?";
        try (Connection con = conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, funcionario.getTipoIdentificacion());
            ps.setLong(2, funcionario.getNumeroIdentificacion());
            ps.setString(3, funcionario.getNombres());
            ps.setString(4, funcionario.getApellidos());
            ps.setString(5, funcionario.getEstadoCivil());
            ps.setString(6, funcionario.getSexo());
            ps.setString(7, funcionario.getDireccion());
            ps.setString(8, funcionario.getTelefono());
            ps.setString(9, funcionario.getFechaNacimiento());
            ps.setInt(10, funcionario.getId());

            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("Error al actualizar: " + e.getMessage());
            return false;
        }
    }

    // DELETE
    public boolean eliminar(int id) {
        String sql = "DELETE FROM TbFuncionarios WHERE FuncionarioID=?";
        try (Connection con = conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println("Error al eliminar: " + e.getMessage());
            return false;
        }
    }

    // SELECT
    public List<Funcionario> listar() {
        List<Funcionario> lista = new ArrayList<>();
        String sql = "SELECT * FROM TbFuncionarios";
        try (Connection con = conexion.conectar();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Funcionario f = new Funcionario();
                f.setId(rs.getInt("FuncionarioID"));
                f.setTipoIdentificacion(rs.getString("TipoIdentificacion"));
                f.setNumeroIdentificacion(rs.getLong("NumeroIdentificacion"));
                f.setNombres(rs.getString("Nombres"));
                f.setApellidos(rs.getString("Apellidos"));
                f.setEstadoCivil(rs.getString("EstadoCivil"));
                f.setSexo(rs.getString("Sexo"));
                f.setDireccion(rs.getString("Direccion"));
                f.setTelefono(rs.getString("Telefono"));
                f.setFechaNacimiento(rs.getString("FechaNacimiento"));
                lista.add(f);
            }
        } catch (SQLException e) {
            System.out.println("Error al listar: " + e.getMessage());
        }
        return lista;
    }    
}