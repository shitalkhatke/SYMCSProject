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


@WebServlet(name = "eligibility", urlPatterns = {"/eligibility"})
public class eligibility extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String cname=request.getParameter("txtcomp");
        String tmarks=request.getParameter("txtmar");
        String temarks=request.getParameter("txtmark");
        String gradmarks=request.getParameter("gra");
        String postgradmarks=request.getParameter("txtpo");
        String languages="";
        String lang[]=request.getParameterValues("jc");
        for(int i=0;i<lang.length;i++)
        {
        languages+=lang[i]+" ";
        }
        try 
        {
             Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
           Statement  st=con.createStatement();
             
           
        st.executeUpdate("insert into eligibility (cname,tmarks,temarks,gradmarks,postgradmarks,cources)values('"+cname+"',"+tmarks+","+temarks+","+gradmarks+","+postgradmarks+",'"+languages+"')");
        JOptionPane.showMessageDialog(null,"  successfull"); 
         RequestDispatcher rd=request.getRequestDispatcher("/comhom.jsp");
                rd.forward(request, response);
  
          
        } 
        catch(Exception e)
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
