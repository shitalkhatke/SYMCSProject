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


@WebServlet(name = "sregservlet", urlPatterns = {"/sregservlet"})
public class sregservlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter  out = response.getWriter();
         String sfnm=request.getParameter("txtfnm");
        String sunm=request.getParameter("txtunm");
        String spass=request.getParameter("passr");
        String scpass=request.getParameter("passcr");
        String phno=request.getParameter("txtmo");
        String Email=request.getParameter("txtEM");
        String Tmarks=request.getParameter("txt10");
        String Temarks=request.getParameter("txt12");
        String Tymarks=request.getParameter("txtTY");
        
        try 
        {
            
        int em=Email.length();
         
         
        
             if(em>0)
            {
               boolean chk= Email.contains("@");
               boolean chk1= Email.contains(".com");
               if(chk==true && chk1==true)
               {
                  RequestDispatcher rd=request.getRequestDispatcher("/studreg.jsp");
                rd.forward(request, response);
        
               }
               else
               {
                   RequestDispatcher rd=request.getRequestDispatcher("/studreg.jsp");
                 rd.forward(request, response);
                   JOptionPane.showMessageDialog(null,"Email should be in neat format"); 
                
               }
            }
               
            else if(spass.equalsIgnoreCase(scpass))
            {
                
            }
           
            else
            {
              JOptionPane.showMessageDialog(null," password and confirm password should be same"); 
                RequestDispatcher rd=request.getRequestDispatcher("/studreg.jsp");
                 rd.forward(request, response);
              
            }
             
          Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
           Statement  st=con.createStatement();
             
           
        st.executeUpdate("insert into studentreg (sfnm,sunm,spass,scpass,phno,Email,Tmarks,Temarks)values('"+sfnm+"','"+sunm+"','"+spass+"','"+scpass+"','"+phno+"','"+Email+"',"+Tmarks+","+Temarks+")");
        JOptionPane.showMessageDialog(null," Registration successfull"); 
         RequestDispatcher rd=request.getRequestDispatcher("/studlog.jsp");
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
