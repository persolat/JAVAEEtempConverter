package fr.video2brain.tempconverter.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.video2brain.tempconverter.models.User;

public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("LoginServlet - doGet");
//	PrintWriter out = resp.getWriter();
//	out.println("<html> <head></head><body><h1> Hello Word</h1></body></html>");

		req.getRequestDispatcher("/WEB-INF/login.jsp").forward(req, resp);
		}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("LoginServlet - doPost");
		
		String email= req.getParameter("email");
		String password = req.getParameter("password");
		System.out.println("Email : " + email + " password : " +password );
	if (email.equals("test@test.fr")&& password.equals("test3"))
		{
			System.out.println("Bonne Authentification");
			
			req.getSession().setAttribute("user", new User(email, password));
			resp.sendRedirect("converter");
			
		} else {
			System.out.println("Mauvaise authentification");
			resp.sendRedirect("login");
		
	           }
	}
	


	
}
