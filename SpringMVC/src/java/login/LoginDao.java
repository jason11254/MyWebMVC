package login;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {

    public String CheckLoginUser(Login loginBean) {
        String userName = loginBean.getUserName();
        String password = loginBean.getPassword();
        String DBuser,DBpassword;
        Connection con;
        Statement statement;
        ResultSet resultSet;       
        try {
            con = DBConfig.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select userName,password from users");
            while (resultSet.next()){ 
                DBuser = resultSet.getString("userName");
                DBpassword = resultSet.getString("password");
                if (userName.equals(DBuser) && password.equals(DBpassword)) {
                    return "SUCCESS"; 
                }
            }
        } catch (SQLException e) {
            System.out.println("錯誤:"+e);
        }
        return "錯誤的使用者資料";
    }
}