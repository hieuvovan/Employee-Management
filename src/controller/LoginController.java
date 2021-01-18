package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDAO;
import dao.LoginDAOImpl;
import bean.Login;

public class LoginController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	LoginDAO loginDAO = null;
	
	public LoginController() {
		loginDAO = new LoginDAOImpl();
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		Login login = new Login();
		login.setEmail(request.getParameter("email"));
		login.setPassword(request.getParameter("password"));
		
		String result=loginDAO.loginCheck(login);
		
		if(result.equals("true")){
			session.setAttribute("email",login.getEmail());
			Cookie user = new Cookie("user", login.getEmail());
		    Cookie pass = new Cookie("pass", login.getPassword());
		      if (request.getParameter("chkRemember") != null) {
		        user.setMaxAge(60 * 60 * 24);
		        pass.setMaxAge(60 * 60 * 24);
		      } else {
		        user.setMaxAge(0);
		        pass.setMaxAge(0);
		      }
		      response.addCookie(user);
		      response.addCookie(pass);
		      response.sendRedirect("QuanLyNhanSu");
		}
		 
		if(result.equals("false")){
			request.setAttribute("error", "Tài khoản hoặc mật khẩu không đúng !");
	        RequestDispatcher dis = request.getRequestDispatcher("dangnhap");
	        dis.forward(request, response);
		}
		 
		if(result.equals("error")){
		    response.sendRedirect("index.jsp?status=error");
		}
		
	}
}

