/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jason
 */
@WebServlet(name = "UserServlet", urlPatterns = {"/UserServlet"})
public class UserServlet extends HttpServlet {

    String url = "jdbc:mysql://localhost:3306/world?serverTimezone=Asia/Taipei&characterEncoding=utf-8&useUnicode=true";
    String User = "root";
    String Password = "12345678";
    String myDriver = "com.mysql.jdbc.Driver";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        StorUserData(request, response);
    }

    private boolean CheckUserData(String s) throws ClassNotFoundException, SQLException {
        Class.forName(myDriver);
        String sname = s;
        String checksql = "Select userName from users where userName = " + "\"" + sname + "\"";
        boolean check = false;
        String username = null;
        try (Connection conn = DriverManager.getConnection(url, User, Password);
                Statement stat = conn.createStatement();
                ResultSet rs = stat.executeQuery(checksql);) {
            if (rs.next()) {
                username = rs.getString("userName");
                check = true;
            }
            System.out.println(username);
            System.out.println(check);
        } catch (Exception e) {
        }
        return check;
    }

    private void StorUserData(HttpServletRequest request, HttpServletResponse response) throws IOException, ClassNotFoundException, SQLException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean check = CheckUserData(username);
        response.getWriter().append("名字:" + name + ", 信箱:" + email + ", 使用者:" + username + ", 密碼:" + password + check);
        if (check == true) {
            String error = "username已存在!";
            request.setAttribute("userNameError", error);
            request.getRequestDispatcher("viewpage/signup.jsp").forward(request, response);
        } else {
            InsertUserData(name, email, username, password);
            response.sendRedirect("viewpage/login.jsp");
        }
    }

    private void InsertUserData(String name, String email, String username, String password) throws ClassNotFoundException {
        String sql = "insert users (fullName,Email,userName,password) values (" + "\"" + name + "\",\"" + email + "\",\"" + username + "\",\"" + password + "\")";
        Class.forName(myDriver);
        try (Connection conn = DriverManager.getConnection(url, User, Password);
                Statement stat = conn.createStatement();) {
            stat.executeUpdate(sql);         
        } catch (Exception e) {
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
