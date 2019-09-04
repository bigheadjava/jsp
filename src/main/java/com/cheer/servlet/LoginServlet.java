package com.cheer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginServlet", urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userName = req.getParameter("userName");
		String password = req.getParameter("userPassword");
		String target;
		if("admin".equals(userName) && "password".equals(password)) {
			target = "/jsp/index.jsp";
		}else {
			target = "/jsp/login.jsp?msg=用户名和密码不正确，请重新登陆!";
		}
		RequestDispatcher dispatcher = req.getRequestDispatcher(target);
		dispatcher.forward(req, resp);
	}
}
