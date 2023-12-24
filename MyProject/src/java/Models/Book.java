/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Models;

/**
 *
 * @author 21H1 HNQA
 */
public class Book {
    private int id;
    private String name;
    private String description;
    private int price;
    private String type;
    private String urlimg;
private int booktotal;
    public Book() {
    }

    public Book(int id, String name, String description, int price, String type, String urlimg,int booktotal) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.type = type;
        this.urlimg = urlimg;
        this.booktotal = booktotal;
    }

    public int getBooktotal() {
        return booktotal;
    }

    public void setBooktotal(int booktotal) {
        this.booktotal = booktotal;
    }



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public int getPrice() {
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

  
    public String toString() {
        return "Book{" + "id=" + id + ", name=" + name + ", description=" + description + ", price=" + price + ", type=" + type + ", urlimg=" + urlimg + '}';
    }

 
}
