package employee;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

@WebServlet(name = "EmployeeServlet", urlPatterns = {"/EmployeeServlet"})
public class EmployeeServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        List<Employee> employeeList = getEmployeeList(request, response);
        request.setAttribute("employeeList", employeeList);
        RequestDispatcher view = request.getRequestDispatcher("/employee/home.jsp"); 
        view.include(request, response);
        //request.getRequestDispatcher("/employee/home.jsp").forward(request, response); 
   }
    private static List<Employee> getEmployeeList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        ApplicationContext clsContext = new ClassPathXmlApplicationContext("employee/applicationContext.xml");
        EmployeeDao dao1 = clsContext.getBean(EmployeeDao.class);
        List<Employee> employeeList = new ArrayList<>();
        int rowCount = dao1.getEmployeeTableRow().getCount();
        int firstID = 100;
        for (int i = 1; i <= rowCount; i++) {
            int id = dao1.getEmployeeById(firstID).getId();
            int age = dao1.getEmployeeById(firstID).getAge();
            String namefirst = dao1.getEmployeeById(firstID).getFirst();
            String namelast = dao1.getEmployeeById(firstID).getLast();
            String phone = dao1.getEmployeeById(firstID).getPhone();
            String mail = dao1.getEmployeeById(firstID).getEmail();
            Employee employee = new Employee(id, age, namefirst, namelast,phone,mail);
            employeeList.add(employee);
            firstID++;
        }   
        //FIRSTID=100;       
        return  employeeList;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
