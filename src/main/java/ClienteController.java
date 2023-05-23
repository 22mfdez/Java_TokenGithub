/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author Maria
 */
@WebServlet(urlPatterns = {"/Factura"})
public class ClienteController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ClienteController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClienteController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String usuario = request.getParameter("usuario");
        String plan = request.getParameter("plan");
        int peso = Integer.parseInt(request.getParameter("peso"));
        String categoria = request.getParameter("categoria");
        int eventos = Integer.parseInt(request.getParameter("eventos"));
        int horas = Integer.parseInt(request.getParameter("horas"));

        //Instanciar la clase
        Cliente cliente = new Cliente(usuario, plan, peso, categoria, eventos, horas);

        //LLamo a la claseDAO, necesitamos un objeto para usar las funciones de la clase y llamar a los métodos
        ClienteDAO dao = new ClienteDAO();
        dao.insertarCliente(cliente);

      String factura = "<p>Factura </p> <p>usuario: " + cliente.usuario + "</p> <p>plan: " + cliente.plan + "</p> <p>peso: " + cliente.peso + " </p> <p>categoria: " + cliente.categoria + "</p> <p>eventos: " + cliente.eventos + "</p> <p>horas: " + cliente.horas + "</p><p>total: " + cliente.totalFactura() + "</p>";
request.setAttribute("factura", factura);

        
   

        List<Cliente> listUser = dao.listaUsuarios();

        StringBuilder table = new StringBuilder();
        table.append("<table class='table' style='width:700px; margin:0 auto;' ><thead><tr><th scope='col'>Usuario</th><th scope='col'>Plan</th><th scope='col'>Peso</th><th scope='col'>Categoría</th><th scope='col'>Competiciones</th><th scope='col'>Horas</th></tr></thead><tbody>");

        for (Cliente usere : listUser) {
            table.append("<tr>");
            table.append("<td>").append(usere.getUsuario()).append("</td>");
            table.append("<td>").append(usere.getPlan()).append("</td>");
            table.append("<td>").append(usere.getPeso()).append("kg</td>");
            table.append("<td>").append(usere.getCategoria()).append("</td>");
            table.append("<td>").append(usere.getEventos()).append(" Eventos</td>");
            table.append("<td>").append(usere.getHoras()).append(" Horas</td>");
            table.append("</tr>");
        }

        table.append("</tbody></table>");
        request.setAttribute("tabla", table.toString());
        RequestDispatcher rd = request.getRequestDispatcher("add-cliente.jsp");
        rd.include(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
