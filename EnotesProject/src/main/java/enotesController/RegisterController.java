package enotesController;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import enotesDao.RegisterDao;
import enotesModel.RegisterModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class RegisterController
 */
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username=request.getParameter("username");
		long phn_no=Long.parseLong(request.getParameter("phone"));
		String pswd=request.getParameter("password");
		String cpswd=request.getParameter("confirmPassword");
		PrintWriter out=response.getWriter();
		HttpSession session;
		if(pswd.equals(cpswd)) {
			RegisterModel m=new RegisterModel();
			m.setUsername(username);
			m.setPhno(phn_no);
			m.setPswd(pswd);
			m.setCpswd(cpswd);
			RegisterDao d=new RegisterDao();
			try {
				d.register(m);
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			session=request.getSession();
			session.setAttribute("reg-succes","Registred Succesfully...");
			response.sendRedirect("Register.jsp");
		}
		else {
		session=request.getSession();
		session.setAttribute("failed-msg","Please check password and cofirm password and register again");
		response.sendRedirect("Register.jsp");	
		}
	}

}
