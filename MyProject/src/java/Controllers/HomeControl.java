/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Dal.DAO;
import Models.Book;
import Models.BookAuthor;
import Models.Paging;
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

public class HomeControl extends HttpServlet {

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
        DAO dao = new DAO();
        int price = 0;
        int type = 0;
        
         try{
            price = Integer.parseInt(request.getParameter("price"));
            
        } catch(Exception ex) {}
        try{
           type = Integer.parseInt(request.getParameter("type"));
            
        } catch(Exception ex) {}
        List<Book> list = dao.getAllBook(price);
         if (type==1) {
       list = dao.getBookType("văn học",price);}
        else if(type==2) {
       list = dao.getBookType("kinh tế",price); }
        else if (type==3) {
        list = dao.getBookType("kỹ năng",price); }
        else if(type==4 ) {
        list = dao.getBookType("self-help",price); }
        String search = request.getParameter("search");
        if(search!=null) {
        list =  dao.getSearch(search);}
        request.setAttribute("listP", list);
        
        int nrpp=6;
        int index=-1;
        try{
            index = Integer.parseInt(request.getParameter("index"));
        } catch(Exception ex) {}
        Paging p = new Paging(nrpp, index, list.size());
        p.calc();
      
        
//        int id = 1;
//          try{
//            id = Integer.parseInt(request.getParameter("id"));
//        } catch(Exception ex) {}
//          request.setAttribute("id", id);
        request.setAttribute("index", index);
        request.setAttribute("type", type);
        request.setAttribute("price", price);
        request.setAttribute("page", p);
        
        request.getRequestDispatcher("HomePaging.jsp").forward(request, response);
        
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
        processRequest(request, response);
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
