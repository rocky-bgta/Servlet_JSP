package com.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.example.model.Dog;

public class ContextListener implements ServletContextListener {

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
		ServletContext sc = event.getServletContext();
		String dogBreed = sc.getInitParameter("breed");
		
		Dog d = new Dog(dogBreed);
		sc.setAttribute("dog", d);
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
	}

}
