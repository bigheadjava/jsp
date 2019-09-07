package com.cheer.servlet;

import java.io.IOException;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="ParameterMessage",urlPatterns= {"/zh_msg_page","/en_msg_page"})
@SuppressWarnings("serial")
public class ParameterMessage extends HttpServlet {
	
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
		String[] msgParameters = new String[1];
		String errorMsg = rb.getString("error.mandatory.field");
		msgParameters[0] = rb.getString("label.field.name");
		String formattedMsg = MessageFormat.format(errorMsg, msgParameters);
		
		
		req.setAttribute("formattedMsg", formattedMsg);
		req.getRequestDispatcher("/jsp/validationMsg.jsp").forward(req, resp);
	}
}
