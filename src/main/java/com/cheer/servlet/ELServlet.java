package com.cheer.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cheer.bean.UserBean;

@WebServlet(name = "ELServlet", urlPatterns = { "/el-object-field","/el-array-collections"})
public class ELServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -819197005408905587L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserBean andyLau = new UserBean("刘德华",62,"男");
		
		String[] skillArray = { "Java", "JQuery", "HTML5", "Spring", "Oracle" };
		
		List<String> cityList = new ArrayList<String>();
		cityList.add("0苏州");
		cityList.add("1杭州");
		cityList.add("2池州");
		cityList.add("3沧州");
		cityList.add("4徐州");
		
		Set<String> languageSet = new LinkedHashSet<String>();
		languageSet.add("0汉语");
		languageSet.add("1英语");
		languageSet.add("2法语");
		languageSet.add("3日语");
		languageSet.add("4德语");
		
		Map<String,String> studentMap = new HashMap<String,String>();
		studentMap.put("S001", "张三");
		studentMap.put("S002", "李四");
		studentMap.put("S003", "王五");
		
		req.setAttribute("skillArray", skillArray);
		req.setAttribute("cityList", cityList);
		req.setAttribute("languageSet", languageSet);
		req.setAttribute("studentMap", studentMap);
		req.setAttribute("andyLau", andyLau);
		
		String uri = req.getRequestURI();
		String[] strArray = uri.split("/");
		String target = strArray[strArray.length-1];
		req.getRequestDispatcher("/jsp/"+target+".jsp").forward(req, resp);
		
	}
}
