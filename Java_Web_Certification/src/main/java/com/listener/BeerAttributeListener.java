package com.listener;

import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class BeerAttributeListener implements HttpSessionAttributeListener {
	
	public void attributeAdded(HttpSessionBindingEvent event){
		
		String name = event.getName();
		Object value = event.getValue();
		
		System.out.println("Attribute added: " + name + ": " + value);
	}

	@Override
	public void attributeRemoved(HttpSessionBindingEvent event) {
		String name = event.getName();
		Object value = event.getValue();
		System.out.println("Attribute removed: " + name + ": " + value);
		
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent event) {
		String name = event.getName();
		Object value = event.getValue();
		System.out.println("Attribute replaced: " + name + ": " + value);
		
	}

	
}
