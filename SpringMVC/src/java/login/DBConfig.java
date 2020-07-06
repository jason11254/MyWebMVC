/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package login;

/**
 *
 * @author jason
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConfig {

    public static Connection createConnection() {
        Connection conn = null;
        String url = "jdbc:mysql://localhost:3306/world?serverTimezone=Asia/Taipei&characterEncoding=utf-8&useUnicode=true";
        String username = "root";
        String password = "12345678";
        try {
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("Printing connection object " + conn);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
