package temp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.swing.*;



@WebServlet(name = "compup", urlPatterns = {"/compup"})
public class compup extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String cname=request.getParameter("cnm");
        String cadd=request.getParameter("cadd");
        int year=Integer.parseInt(request.getParameter("year"));
        String chairnm=request.getParameter("chnm");
        String ceonm=request.getParameter("ceo");
        int empn=Integer.parseInt(request.getParameter("nop"));
        try
        {
            String name=null;
             java.sql.ResultSet rs;
             rs=null;
            HttpSession session=request.getSession(false);  
           String n=(String)session.getAttribute("txtunm");
           
             Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
           Statement  st=con.createStatement();
           String sql="SELECT * FROM cregistration where cname='"+n+"'";
           rs=st.executeQuery("sql");
          while(rs.next())
          {
              name=rs.getString(2);
          }
        String  query = "UPDATE cprofile SET cname='"+cname+"',caddr='"+cadd+"',eyear="+year+",chairnm='"+chairnm+"',ceonm='"+ceonm+"',nemp="+empn+" WHERE cname='"+name+"'";
        
      
        JOptionPane.showMessageDialog(null," Record Updated successfully"); 
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
