/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author 21H1 HNQA
 */
public class BookAuthor {
    private int idB;
    private String name;
    private String description;
    private int price;
    private String type;
    private String urlimg;
    private int booktotal;
    private int idA;
    private String fullname;

    public BookAuthor() {
    }

    public BookAuthor(int idB, String name, String description, int price, String type, String urlimg,int booktotal, int idA, String fullname) {
        this.idB = idB;
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
        this.urlimg = urlimg;
        this.booktotal = booktotal;
        this.idA = idA;
        this.fullname = fullname;
    }

    public int getBooktotal() {
        return booktotal;
    }

    public void setBooktotal(int booktotal) {
        this.booktotal = booktotal;
    }

    public int getIdB() {
        return idB;
    }

    public void setIdB(int idB) {
        this.idB = idB;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getUrlimg() {
        return urlimg;
    }

    public void setUrlimg(String urlimg) {
        this.urlimg = urlimg;
    }

    public int getIdA() {
        return idA;
    }

    public void setIdA(int idA) {
        this.idA = idA;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    
//    public String toString() {
//        return "BookAuthor{" + "idB=" + idB + ", name=" + name + ", description=" + description + ", price=" + price + ", type=" + type + ", urlimg=" + urlimg + ", idA=" + idA + ", fullname=" + fullname + '}';
//    }
    
    
}
