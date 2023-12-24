/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers;

import Dal.DAO;
import Models.Book;
import Models.BookAuthor;
import Models.author;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;

/**
 *
 * @author 21H1 HNQA
 */
public class addauthor extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        DAO dao = new DAO();
        String name = request.getParameter("name");
         int id = 0;
        try {
            id = Integer.parseInt(request.getParameter("id"));

        } catch (Exception ex) {}
           int idB = 0;
        try {
            idB = Integer.parseInt(request.getParameter("idB"));

        } catch (Exception ex) {}
        author A = dao.getAuthor(id);
         List<BookAuthor> listB = dao.getBookDetail(idB);
        if(A!=null) {
         for (BookAuthor o : listB) {
            if(o.getIdA()==id) {
            request.setAttribute("loi", "Id author has existed in your book, please enter the other id!!");
            break;
            }
        }
         }
        if(A==null&&name!=null&&id!=0) {
              request.setAttribute("mess", "Add author success!!");
              dao.InsertAuthor(id, name);
              dao.addBookAuthor(idB, id);
        }
        if(A!=null&&name!=null&&id!=0) {
            request.setAttribute("mess", "Add author success!!");
             dao.addBookAuthor(idB, id);
        }
      
        request.getRequestDispatcher("author.jsp").forward(request, response);
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
