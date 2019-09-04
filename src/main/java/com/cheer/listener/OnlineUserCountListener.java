package com.cheer.listener;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class OnlineUserCountListener implements HttpSessionListener {

	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		ServletContext ctx = session.getServletContext();
		Integer count = (Integer) ctx.getAttribute("online_user_count");
		if(count == null) {
			count = Integer.valueOf(1);
		}else {
			count = Integer.valueOf(count + 1);
		}
		ctx.setAttribute("online_user_count", count);
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		ServletContext ctx = session.getServletContext();
		Integer count = (Integer) ctx.getAttribute("online_user_count");
		if(count != null) {
			count = Integer.valueOf(count-1);
		}
		ctx.setAttribute("online_user_count", count);
	}

}
