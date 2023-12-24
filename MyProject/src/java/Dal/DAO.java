/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Context.DBContext;
import Models.Account;
import Models.Book;
import Models.BookAuthor;
import Models.BookCart;
import Models.author;
import Models.cart;
import Models.showhistory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author 21H1 HNQA
 */
public class DAO {

    private Connection con;

    public List<Book> getAllBook() {
        List<Book> list = new ArrayList<>();
        String sql = "Select * from Book_HE171882";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<BookAuthor> getAllBookAuthor() {
        List<BookAuthor> list = new ArrayList<>();
        String sql = "select Book_HE171882.*,Author_HE171882.id as authorid,Author_HE171882.fullname from  Book_HE171882 join BookAuthor_HE171882 on Book_HE171882.id = BookAuthor_HE171882.book_id \n"
                + "join Author_HE171882 on BookAuthor_HE171882.author_id = Author_HE171882.id  ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookAuthor(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(8),
                        rs.getInt(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public author getAuthor(String name) {
        List<author> list = new ArrayList<>();
        String sql = "Select * from Author_HE171882 where fullname = ?";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (new author(
                        rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (Exception e) {

        }
        return null;

    }

    public author getAuthor(int id) {
        List<author> list = new ArrayList<>();
        String sql = "Select * from Author_HE171882 where id = ?";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (new author(
                        rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (Exception e) {

        }
        return null;

    }

    public List<BookAuthor> getBookDetail(int id) {
        List<BookAuthor> list = new ArrayList<>();
        String sql = "select Book_HE171882.*,Author_HE171882.id ,Author_HE171882.fullname from  Book_HE171882 join BookAuthor_HE171882 on Book_HE171882.id = BookAuthor_HE171882.book_id \n"
                + "join Author_HE171882 on BookAuthor_HE171882.author_id = Author_HE171882.id where Book_HE171882.id = ?";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookAuthor(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getInt(8),
                        rs.getString(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Book> getBookType(String type) {
        List<Book> list = new ArrayList<>();
        String sql = "Select * from Book_HE171882 where type = ?";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Book> getAllBook(int price) {
        List<Book> list = new ArrayList<>();
        String sql = "Select * from Book_HE171882";
        if (price == 0) {
            sql += "";
        } else if (price == 1) {
            sql += " where price <= 100000";
        } else if (price == 2) {
            sql += " where (price > 100000 and price <200000)";
        } else if (price == 3) {
            sql += " where (price > 200000 and price <300000)";
        } else if (price == 4) {
            sql += " where (price > 300000 and price <400000)";
        } else if (price == 5) {
            sql += " where price >= 500000";
        }

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Book> getBookType(String type, int price) {
        List<Book> list = new ArrayList<>();
        String sql = "Select * from Book_HE171882";
        if (type != null) {
            if (price == 0) {
                sql += " where type = ?";
            } else if (price == 1) {
                sql += " where type = ? and price <= 100000";
            } else if (price == 2) {
                sql += " where type = ? and (price > 100000 and price <200000)";
            } else if (price == 3) {
                sql += " where type = ? and (price > 200000 and price <300000)";
            } else if (price == 4) {
                sql += " where type = ? and (price > 300000 and price <400000)";
            } else if (price == 5) {
                sql += " where type = ? and price >= 500000";
            }
        } else {
            if (price == 0) {
                sql += "";
            } else if (price == 1) {
                sql += " where price <= 100000";
            } else if (price == 2) {
                sql += " where (price > 100000 and price <200000)";
            } else if (price == 3) {
                sql += " where (price > 200000 and price <300000)";
            } else if (price == 4) {
                sql += " where (price > 300000 and price <400000)";
            } else if (price == 5) {
                sql += " where price >= 500000";
            }
        }
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<Book> getBookId(int id) {
        List<Book> list = new ArrayList<>();
        String sql = "Select * from Book_HE171882 where id = ?";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "select * from User_HE171882\n"
                + "where username = ?\n"
                + "and password = ?";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String sql = "select * from User_HE171882\n"
                + "where username = ?\n";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {

        }
        return null;
    }

    public void signup(String user, String fullname,String pass , String address, String ft) {
        String sql = "insert into User_HE171882\n"
                + "values(?,?,?,0,?,?)";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, fullname);
            ps.setString(3, pass);
            ps.setString(4, address);
            ps.setString(5, ft);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Book> getSearch(String name) {
        List<Book> list = new ArrayList<>();
        String sql = "select Book_HE171882.* from Book_HE171882 where\n"
                + "Book_HE171882.name like ? ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + name + "%");

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Book(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public void Insert(int id, String name, String description, int price, String type, String urlimg, int quantity) {
        String sql = "Insert into Book_HE171882 values(?,?,?,?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setNString(2, name);
            ps.setNString(3, description);
            ps.setInt(4, price);
            ps.setNString(5, type);
            ps.setString(6, urlimg);
            ps.setInt(7, quantity);
            ps.execute();
        } catch (Exception e) {

        }
    }

    public void InsertAuthor(int id, String name) {
        String sql = "Insert into Author_HE171882 values(?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(2, name);
            ps.execute();
        } catch (Exception e) {
        }
    }

    public void delete(String id) {
        String sql = "delete from Book_HE171882 where id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void deleteAuthor(int idB, int idA) {
        String sql = "delete from BookAuthor_HE171882 where book_id = ? and author_id=?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, idB);
            ps.setInt(2, idA);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void addBookAuthor(int idB, int idA) {
        String sql = "Insert into BookAuthor_HE171882 values(?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, idB);
            ps.setInt(2, idA);
            ps.executeUpdate();
        } catch (Exception e) {

        }
    }

    public void UpdateBook(int id, String name, String description, double price, String type, String urlimg, int booktotal) {
        String sql = "UPDATE Book_HE171882 SET [name] = ? ,[description] = ? "
                + ",[price] = ? ,[type] = ? ,[urlimg] = ? ,[booktotal] = ? WHERE id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setString(2, description);
            ps.setDouble(3, price);
            ps.setString(4, type);
            ps.setString(5, urlimg);
            ps.setInt(6, booktotal);
            ps.setInt(7, id);
            ps.execute();
        } catch (Exception e) {

        }
    }

    public void InsertCart(String idU, int idB, int quantity, int sellprice) {
        String sql = "Insert into Cart_HE171882 values(?,?,?,?)";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idU);
            ps.setInt(2, idB);
            ps.setInt(3, quantity);
            ps.setInt(4, sellprice);

            ps.execute();
        } catch (Exception e) {

        }
    }

    public List<BookCart> getBookCart(String id) {
        List<BookCart> list = new ArrayList<>();
        String sql = "select Cart_HE171882.*,Book_HE171882.name,Book_HE171882.urlimg,Book_HE171882.booktotal from Cart_HE171882 join Book_HE171882 on Cart_HE171882.bookId = Book_HE171882.id  where userid = ? ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BookCart(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {

        }

        return list;
    }

    public void deleteCart(int idB, String idU) {
        String sql = "delete from Cart_HE171882 where bookid = ? and userid = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, idB);
            ps.setString(2, idU);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteCart(String idU) {
        String sql = "delete from Cart_HE171882 where userid = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idU);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int totalprice(String idU) {
        int total = 0;
        String sql = "SELECT SUM(sellprice*quantity)  FROM  Cart_HE171882   where userid = ? ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idU);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return total;
    }

    public void UpdateQuantity(int quantity, String iu, int ib) {
        String sql = "UPDATE Cart_HE171882 SET [quantity] = ? WHERE userid = ? and bookid = ? ";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setString(2, iu);
            ps.setInt(3, ib);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<cart> getCart(String id) {
        List<cart> list = new ArrayList<>();
        String sql = "select * from Cart_HE171882 where userid = ? ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new cart(
                        rs.getString(1),
                        rs.getInt(2),
                        rs.getInt(3),
                        rs.getInt(4)));
            }
        } catch (Exception e) {

        }
        return list;
    }

    public void insertOrder(String userid, java.time.LocalDate date, int amount) {
        String sql = "insert into order_HE171882\n"
                + "values(?,?,?)";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, userid);
            ps.setDate(2, java.sql.Date.valueOf(date));
            ps.setInt(3, amount);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertOrderDetal(int bookid, int orderid, int quantity, int sellprice) {
        String sql = "insert into OrderDetail_He171882\n"
                + "values(?,?,?,?)";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bookid);
            ps.setInt(2, orderid);
            ps.setInt(3, quantity);
            ps.setInt(4, sellprice);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void UpdateBook(int iB, int total) {
        String sql = "UPDATE Book_HE171882 SET [booktotal] = ? WHERE id = ? ";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, iB);

            ps.setInt(2, total);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int orderid(String idU) {
        int id = 0;
        String sql = "select top 1 id from order_HE171882 where userid = ? ORDER BY id DESC ";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, idU);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return id;
    }

    
        public void UpdateAccount(String name, String address, String username) {
        String sql = "UPDATE User_HE171882 SET fullname = ?, address = ? WHERE username = ? ";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, name);
            ps.setNString(2,address);
            ps.setString(3, username);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
        
        public Account forgetPass(String username, String ft){
            List<Account> list = new ArrayList<>();
        String sql = "select * from User_HE171882 where username = ? and favoriteteacher= ?";
        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1,username);
            ps.setNString(2,ft);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return (new Account(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6)));

            }
        } catch (Exception e) {

        }
        return null;
        }
        
         public void UpdatePass(String pass, String username) {
        String sql = "UPDATE User_HE171882 SET password= ? WHERE username = ? ";

        try {

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, pass);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
         
          public List<showhistory> showHistory(String id) {
        List<showhistory> list = new ArrayList<>();
        String sql = "select  order_HE171882.date, Book_HE171882.urlimg, Book_HE171882.name, OrderDetail_He171882.quantity, OrderDetail_He171882.sellprice,order_HE171882.amount\n" +
"from order_HE171882 join OrderDetail_He171882 on order_HE171882.id=OrderDetail_He171882.orderId join Book_HE171882 \n" +
"on OrderDetail_He171882.bookId = Book_HE171882.id where order_HE171882.USERID = ?";

        try {
            con = new DBContext().getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new showhistory(
                        rs.getDate(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getInt(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
         
//        public static void main(String[] args) {
//        DAO d = new DAO();
////        String idU="dodat123";
////        d.UpdateQuantity(5, idU, 10);
////         d.deleteCart(iu);
//int i = d.orderid("dodat123");
//            System.out.println();
//    }
}
