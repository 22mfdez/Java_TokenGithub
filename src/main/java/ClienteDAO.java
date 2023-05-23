import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {
    private String jdbcURL = "jdbc:mysql://localhost:3306/test?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    public Connection conectar() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertarCliente(Cliente c) {

        Connection connection = conectar();
        PreparedStatement ps;
        try {
            ps = connection.prepareStatement("INSERT INTO hito VALUES(?, ?, ?, ?, ?, ?);");
            ps.setString(1, c.getUsuario());
            ps.setString(2, c.getPlan());
            ps.setInt(3, c.getPeso());
            ps.setString(4, c.getCategoria());
            ps.setInt(5, c.getEventos());
            ps.setInt(6, c.getHoras());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }// cierre insert
    public List < Cliente > listaUsuarios() {

        List < Cliente > users = new ArrayList<>();
        try (Connection connection = conectar();

            PreparedStatement preparedStatement = connection.prepareStatement("select nombre, plan, peso, categoria,                eventos, horas from hito");) {
            System.out.println(preparedStatement);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                String usuario = rs.getString("nombre");
                String plan = rs.getString("plan");
                int peso = rs.getInt("peso");
                String categoria = rs.getString("categoria");
                int eventos = rs.getInt("eventos");
                int horas = rs.getInt("horas");
                users.add(new Cliente(usuario, plan, peso, categoria, eventos, horas));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
//resto metodos crud
}

