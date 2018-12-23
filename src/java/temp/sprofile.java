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


@WebServlet(name = "sprofile", urlPatterns = {"/sprofile"})
public class sprofile extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
       
     
        String sfnm=request.getParameter("txtfnm");
        String scnm=request.getParameter("txtcnm");
        String sadd=request.getParameter("add");
        String scat=request.getParameter("category");
        String sphon=request.getParameter("txtmo");
        String semail=request.getParameter("txtEM");
        String smark=request.getParameter("txtmark");
        String sgpa=request.getParameter("txtPA");
        String resume=request.getParameter("res");
            
        
     
        try 
        {
            
        int em=semail.length();
        
        
         if(em>0)
            {
               boolean chk= semail.contains("@");
               boolean chk1= semail.contains(".com");
               if(chk==true && chk1==true)
               {
                  RequestDispatcher rd=request.getRequestDispatcher("/studprof.jsp");
                rd.forward(request, response);
        
               }
               else
               {
                   
                
                   JOptionPane.showMessageDialog(null,"Email should be in neat format"); 
                RequestDispatcher rd=request.getRequestDispatcher("/studprof.jsp");
                 rd.forward(request, response);
               }
               
                Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
           Statement  st=con.createStatement();
             
           
        st.executeUpdate("insert into sprofile (snm,cnm,sadd,squal,mno,email,lsemresult,cgpa,resume)values('"+sfnm+"','"+scnm+"','"+sadd+"','"+scat+"','"+sphon+"','"+semail+"',"+smark+","+sgpa+",'"+resume+"')");
        JOptionPane.showMessageDialog(null,"Profile created successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/studhom.jsp");
         rd.forward(request, response);
  
            }
                 
        
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
