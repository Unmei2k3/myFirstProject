/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author 21H1 HNQA
 */
public class BookCart {
     private String userid;
    private int bookid;
    private int quantity;
    private int sellprice;
  
    private String name;
    private String urlimg;
    private int booktotal;

    public BookCart() {
    }

    public BookCart(String userid, int bookid, int quantity, int sellprice, String name, String urlimg, int booktotal) {
        this.userid = userid;
        this.bookid = bookid;
        this.quantity = quantity;
        this.sellprice = sellprice;
      
        this.name = name;
        this.urlimg = urlimg;
        this.booktotal = booktotal;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
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

  

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrlimg() {
        return urlimg;
    }

    public void setUrlimg(String urlimg) {
        this.urlimg = urlimg;
    }

    public int getBooktotal() {
        return booktotal;
    }

    public void setBooktotal(int booktotal) {
        this.booktotal = booktotal;
    }
    
}
