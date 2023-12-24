/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controllers;

import Dal.DAO;
import Models.Book;
import Models.BookCart;
import Models.cart;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 21H1 HNQA
 */
public class mycart extends HttpServlet {
   
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
        int idB = 0;
        try{
           idB = Integer.parseInt(request.getParameter("id"));
            
        } catch(Exception ex) {}
       String idU=request.getParameter("idU");
        List<Book> list = dao.getBookId(idB);
        List<BookCart> listC = dao.getBookCart(idU);
        Book first = list.get(0);
        String nameB = first.getName();
        int price = first.getPrice();
        int check=0;
        
        for (BookCart o : listC) {
            if(o.getBookid()==idB) {
                check=1;
                break;
            }
        }
        if(check==0&&idB!=0) {
        dao.InsertCart(idU, idB, 1, price);
        }
        int Bdel = 0;
       try{
           Bdel = Integer.parseInt(request.getParameter("Bdel"));
            
        } catch(Exception ex) {}
     
      
     
     if(Bdel!=0) {
       dao.deleteCart(Bdel, idU); }
     int total=   dao.totalprice(idU);
     request.setAttribute("total", total);
     int quantity=0;
        
       try{
           quantity = Integer.parseInt(request.getParameter("quantity"));
            
        } catch(Exception ex) {}
       
       
       dao.UpdateQuantity(quantity, idU, idB);
       listC = dao.getBookCart(idU);
       request.setAttribute("listC", listC);
      
       request.setAttribute("idB", idB);
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
