package com.luo.servlet;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ValiateUsername
 */
@WebServlet(name = "valiateUsername", urlPatterns = { "/valiateUsername" })
public class ValiateUsername extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      List<String> names = Arrays.asList("aaa","bbb","ccc");
      
      String name = request.getParameter("name");
      String result = null;
      
      if (names.contains(name)){
    	  result = "<font color = 'red'>该名称已经被使用。</font>";
      }else{
    	  result = "<font color = 'green'>该名称可以使用。</font>";
      }
      response.setContentType("text/html,charset=UTF-8");
      response.setCharacterEncoding("UTF-8");
      response.getWriter().print(result);
	}

}
