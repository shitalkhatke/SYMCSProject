
package temp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.swing.*;


@WebServlet(name = "comprof", urlPatterns = {"/comprof"})
public class comprof extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String cname=request.getParameter("txtcnm");
        String cadd=request.getParameter("txtadd");
        String year=request.getParameter("EY");
        String chairnm=request.getParameter("cnm");
        String ceonm=request.getParameter("ceonm");
        String empn=request.getParameter("txtEMP");
        
       
        try 
        {
            
            Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
           Statement  st=con.createStatement();
             
           
        st.executeUpdate("insert into cprofile (cname,caddr,eyear,chairnm,ceonm,empn)values('"+cname+"','"+cadd+"',"+year+",'"+chairnm+"','"+ceonm+"',"+empn+")");
        JOptionPane.showMessageDialog(null," Profile Created  successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/comhom.jsp");
         rd.forward(request, response);
  
           
         
        }
        catch(Exception ee)
        {            
            
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
