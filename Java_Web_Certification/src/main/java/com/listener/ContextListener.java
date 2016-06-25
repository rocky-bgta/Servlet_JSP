package com.listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.example.model.Dog;

public class ContextListener implements ServletContextListener {
	
	List<String> list = null;


	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
		list = new ArrayList<String>();
		list.add("light");
		list.add("amber");
		list.add("brown");
		list.add("dark");
		
		
		//Application Context
		ServletContext sc = event.getServletContext();
		String dogBreed = sc.getInitParameter("breed");
		Dog d = new Dog(dogBreed);
		sc.setAttribute("dog", d);
		
		//Application Context 
		sc.setAttribute("colorList", list);

		
	}


	public void contextDestroyed(ServletContextEvent event) {
		// TODO Auto-generated method stub
		
	}

}
