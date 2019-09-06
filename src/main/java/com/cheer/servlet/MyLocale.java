package com.cheer.servlet;

import java.io.IOException;
import java.util.Enumeration;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="MyLocale",urlPatterns= {"/mylocale"})
public class MyLocale extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Locale firstLocale = req.getLocale();
		Enumeration<Locale> allLocales = req.getLocales();
		req.setAttribute("firstLocale", firstLocale);
		req.setAttribute("allLocales", allLocales);
		req.getRequestDispatcher("/jsp/locale.jsp").forward(req, resp);
	}
}
