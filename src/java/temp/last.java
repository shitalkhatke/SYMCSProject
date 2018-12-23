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


@WebServlet(name = "last", urlPatterns = {"/last"})
public class last extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
         String conm="";
       String cource[]=request.getParameterValues("conm");
       for(int i=0;i<cource.length;i++)
        {
        conm+=cource[i]+" ";
        }
        java.sql.ResultSet rs1;
        java.sql.ResultSet rs2;
        rs1=null;
        rs2=null;
        
        try 
        {
        String qual=null;
       
        String Email=null;
        String Sname=null;
           HttpSession session=request.getSession(false);  
           String n=(String)session.getAttribute("txtunm");
           
           Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
          
        Statement  st=con.createStatement();
        String strQuery1="SELECT * FROM studentreg WHERE sunm='"+n+"' "; 
         
        
            rs1=st.executeQuery(strQuery1);
           while(rs1.next())
           {
                Sname=rs1.getString(2);
              
                Email=rs1.getString(7);
               
           }
          //out.print(""+Sname);
         
          //out.print(""+Email);
        String strQuery2="SELECT * FROM sprofile WHERE snm='"+Sname+"' ";     
          rs2=st.executeQuery(strQuery2); 
           while(rs2.next())
           {
                qual=rs2.getString(4);
               
           }
           //out.print(""+qual);
          //Inserting 
         st.executeUpdate("insert into Appstudent(sname,Email,Qual,cname)values('"+Sname+"','"+Email+"','"+qual+"','"+conm+"')");
        JOptionPane.showMessageDialog(null,"You applied Successfully"); 
         RequestDispatcher rd=request.getRequestDispatcher("/job.jsp");
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
