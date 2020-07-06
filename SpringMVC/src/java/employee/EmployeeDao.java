/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package employee;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author jason
 */
public class EmployeeDao {
    JdbcTemplate jdbcTemplate;

    public EmployeeDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Employee getEmployeeById(int id){
        String sql="select * from employees where id = ?";
        return jdbcTemplate.queryForObject(sql,new EmployeeRowMapper(),id);
    }
    public Employee getEmployeeTableRow(){
        String sql="SELECT *,count(*) as count FROM employees";
        return jdbcTemplate.queryForObject(sql,new EmployeeRowCount());
    }
    private static class EmployeeRowMapper implements RowMapper<Employee>{
        @Override
        public Employee mapRow(ResultSet rs, int i) throws SQLException {
            Employee employee=new Employee();
            employee.setId(rs.getInt("id"));
            employee.setAge(rs.getInt("age"));
            employee.setFirst(rs.getString("first"));
            employee.setLast(rs.getString("last"));
            employee.setPhone(rs.getString("phone"));
            employee.setEmail(rs.getString("email"));
            return employee;
        }
    }
    private static class EmployeeRowCount implements RowMapper<Employee>{
        @Override
        public Employee mapRow(ResultSet rs, int i) throws SQLException {
            Employee employee=new Employee();
            employee.setCount(rs.getInt("count"));
            return employee;
        }
    }
    
}
