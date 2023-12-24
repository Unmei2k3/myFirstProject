/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author 21H1 HNQA
 */
public class cart {
    private String id;
    private int bookid;
    private int quantity;
    private int sellprice;
   

    public cart() {
    }

    public cart(String id, int bookid, int quantity, int sellprice) {
        this.id = id;
        this.bookid = bookid;
        this.quantity = quantity;
        this.sellprice = sellprice;
       
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSellprice() {
        return sellprice;
    }

    public void setSellprice(int sellprice) {
        this.sellprice = sellprice;
    }


    
} 
