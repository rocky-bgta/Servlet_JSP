package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.taglibs.standard.functions.*;

import com.example.model.EL_JSTL;

public class EL_JSTL_Controller extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EL_JSTL elJstl = new EL_JSTL();
		elJstl.setCurrentTip("<b></b> tags make things bold!");
		request.setAttribute("pageContent", elJstl);
		RequestDispatcher view = request.getRequestDispatcher("/JSTL/jstlTest.jsp");
		view.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
