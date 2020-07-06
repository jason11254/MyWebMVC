package employee;

import java.io.Serializable;


public class Employee implements Serializable{
    int id,age,count;
    String first,last,phone,email;

    public Employee() {
        super();
    }
    
    public Employee(int id, int age, String first, String last) {
        this.id = id;
        this.age = age;
        this.first = first;
        this.last = last;
    }

    public Employee(int id, int age, String first, String last, String phone, String email) {
        this.id = id;
        this.age = age;
        this.first = first;
        this.last = last;
        this.phone = phone;
        this.email = email;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getFirst() {
        return first;
    }

    public void setFirst(String first) {
        this.first = first;
    }

    public String getLast() {
        return last;
    }

    public void setLast(String last) {
        this.last = last;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Employee{" + "id=" + id + ", age=" + age + ", first=" + first + ", last=" + last + ", phone=" + phone + ", email=" + email + '}';
    }



    
}
