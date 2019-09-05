package com.cheer.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="ELHideObjectServlet",urlPatterns= {"/hideObject"})
public class ELHideObjectServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestAttr = "在requestScope范围内的属性";
		String sessionAttr = "在sessionScope范围内的属性";
		String applicationAttr = "在applicationScope范围内的属性";
		
		
		req.setAttribute("requestAttr", requestAttr);
		req.getSession().setAttribute("sessionAttr", sessionAttr);
		req.getServletContext().setAttribute("applicationAttr", applicationAttr);
		req.getRequestDispatcher("/jsp/hide-object.jsp").forward(req, resp);
	}
}
