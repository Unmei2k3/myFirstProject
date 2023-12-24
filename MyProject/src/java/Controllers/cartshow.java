/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers;

import Dal.DAO;
import Models.BookCart;
import Models.cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

/**
 *
 * @author 21H1 HNQA
 */
public class cartshow extends HttpServlet {
   
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
         HttpSession session = request.getSession();
        DAO dao = new DAO();

       String idU=request.getParameter("idU");
        List<BookCart> listC = dao.getBookCart(idU);
        
        int buy=0;
        try{
           buy = Integer.parseInt(request.getParameter("buy"));
        } catch(Exception ex) {}
       
        int idB=1;
        try{
           idB = Integer.parseInt(request.getParameter("id"));
        } catch(Exception ex) {}
        int total=0;
        total = dao.totalprice(idU);
         if(buy==1&total!=0) {
        List<cart> listcart=dao.getCart(idU);
                 java.time.LocalDate date = java.time.LocalDate.now();
                 dao.insertOrder(idU, date, total);
                 for (cart o : listcart) {
                 if(idU.equals(o.getId())) {
                     dao.insertOrderDetal(o.getBookid(), dao.orderid(idU), o.getQuantity(), o.getSellprice());
                     
                 }
             }
        dao.deleteCart(idU);
                total = dao.totalprice(idU);
        }
        listC = dao.getBookCart(idU);
        request.setAttribute("idB", idB);
       request.setAttribute("total", total);
       request.setAttribute("listC", listC);
        request.getRequestDispatcher("Cart.jsp").forward(request, response);
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
