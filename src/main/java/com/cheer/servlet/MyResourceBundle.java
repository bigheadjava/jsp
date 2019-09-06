package com.cheer.servlet;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="MyResourceBundle",urlPatterns= {"/zh_page","/en_page"})
public class MyResourceBundle extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String[] strArray = uri.split("/");
		String target = strArray[strArray.length-1];
		
		Locale locale = new Locale("zh","CN");
		if(target.indexOf("en_") != -1) {
			locale = new Locale("en","US");
		}
		
		ResourceBundle rb = ResourceBundle.getBundle("resource", locale);
		String helloMsg = rb.getString("hello");
		req.setAttribute("helloMsg", helloMsg);
		req.getRequestDispatcher("/jsp/internation.jsp").forward(req, resp);
	}
}
