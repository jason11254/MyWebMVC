/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package account;

/**
 *
 * @author jason
 */
public class User {
    String fullName,email,userName,password;

    public User() {
    }

    public User(String fullName, String email, String userName, String password) {
        this.fullName = fullName;
        this.email = email;
        this.userName = userName;
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "User{" + "fullName=" + fullName + ", email=" + email + ", userName=" + userName + ", password=" + password + '}';
    }
    public static void main(String[] args) {
        String a="a",b="b",c="v",d="d";
        System.out.println("insert users (fullName,Email,userName,password) values ("+"\""+a+"\",\""+b+"\",\""+c+"\",\""+d+"\")");
    }
}
