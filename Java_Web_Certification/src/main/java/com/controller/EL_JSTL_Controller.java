package com.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.EL_JSTL;

public class EL_JSTL_Controller extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	String [] movieArray = {"Amelie", "Return to the King", "Matrix"};
	String [] movie1 = {"Matrix Revolutions", "Kill Bill", "Boondock Saints"};
	String [] movie2 = {"Amelie", "Return of the King", "Mean Girls"};
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List movieList = new ArrayList();
		movieList.add(movie1);
		movieList.add(movie2);
		
		EL_JSTL elJstl = new EL_JSTL();
		elJstl.setCurrentTip("<b></b> tags make things bold!");
		elJstl.setMovieList(movieArray);
		
		request.setAttribute("pageContent", elJstl);
		request.setAttribute("user", "Rocky");
		request.setAttribute("movieArray", elJstl.getMovieList());
		request.setAttribute("movies", movieList);
		
		RequestDispatcher view = request.getRequestDispatcher("/JSTL/jstlTest.jsp");
		view.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
	
}
