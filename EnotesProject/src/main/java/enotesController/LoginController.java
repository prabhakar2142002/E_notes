package enotesController;

import java.io.IOException;
import java.io.PrintWriter;

import enotesDao.LoginDao;
import enotesModel.LoginModel;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		username password
		boolean f = false;
		String username=request.getParameter("username");	
		String password=request.getParameter("password");
		LoginModel lm=new LoginModel();
		lm.setUsername(username);
		lm.setCpswd(password);
		LoginDao d=new LoginDao();
		try {
			 f=d.Login(lm);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(f) {
			response.sendRedirect("home.jsp");
		}
		else {
			HttpSession session=request.getSession();
			session.setAttribute("login-falied","Invalid Username And Password");
			response.sendRedirect("Login.jsp");
		}
				}
}
