/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Customer;
import model.CustomerDAO;
import java.util.List;

/**
 *
 * @author Brian
 */
public class Controller extends HttpServlet {

    CustomerDAO dao = new CustomerDAO();
    Customer s = new Customer();
    
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Controller</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controller at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    //Code en bas
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
        String action = request.getParameter("action");
        switch(action) {
            case "Display":
                    List<Customer>customers = dao.display();
                    request.setAttribute("customers",customers);
                    request.getRequestDispatcher("main.jsp").forward(request,response);
                    break;
            case "New":  
                    request.getRequestDispatcher("add.jsp").forward(request,response);
                    break;
                    
            case "Save":             
                    String id = request.getParameter("txtid");
                    String name = request.getParameter("txtname");
                    String address = request.getParameter("txtaddress");
           
                    String email = request.getParameter("txtemail");
                    s.setId(Integer.parseInt(id));
                    s.setName(name);
                    s.setAddress(address);
       
                    s.setEmail(email);
                    dao.add(s);
                    request.getRequestDispatcher("Controller?action=Display").forward(request,response);
                    break;
            case "Buy":  
                    String id2 = request.getParameter("txtid");
                    String name2 = request.getParameter("txtname");
                    String address2 = request.getParameter("txtaddress");
           
                    String email2 = request.getParameter("txtemail");
                    s.setId(Integer.parseInt(id2));
                    s.setName(name2);
                    s.setAddress(address2);
       
                    s.setEmail(email2);
                    dao.add(s);
                    request.getRequestDispatcher("complete.jsp").forward(request,response);
                    break;
            case "Edit":
                    String ide = request.getParameter("id");
                    Customer st = dao.displayId(ide);
                    request.setAttribute("customer", st);
                    request.getRequestDispatcher("edit.jsp").forward(request,response);
                    break;
            case "Update":
                    int id1 = Integer.parseInt(request.getParameter("txtid"));
                    String name1 = request.getParameter("txtname");
                    String address1 = request.getParameter("txtaddress");
         
                    String email1 = request.getParameter("txtemail");
                    s.setId(id1);
                    s.setName(name1);
                    s.setAddress(address1);
            
                    s.setEmail(email1);
                    dao.update(s);
                   
                    request.getRequestDispatcher("Controller?action=Display").forward(request,response);
                    break; 
            case "Delete":
                    String id3 = request.getParameter("id");
                    dao.delete(Integer.parseInt(id3));
                    request.getRequestDispatcher("Controller?action=Display").forward(request,response);
                    break;           
        
            default:
                    throw new AssertionError();
                                     
        }
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
