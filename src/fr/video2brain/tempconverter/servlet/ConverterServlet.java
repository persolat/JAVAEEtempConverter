package fr.video2brain.tempconverter.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ConverterServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/WEB-INF/converter.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String celcius = req.getParameter("celcius");
		
		float floatCelcius = Float.parseFloat(celcius);
		
		float result = (floatCelcius * 9/5) + 32;
		System.out.println("resut :" +result);
		
		req.setAttribute("result", result);
		req.getRequestDispatcher("/WEB-INF/converter.jsp").forward(req, resp);
		
	}

	
}
