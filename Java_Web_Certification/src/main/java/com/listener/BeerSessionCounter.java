package com.listener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

public class BeerSessionCounter implements HttpSessionListener{

	static private int activeSessions;
		
	public static int getActiveSessions() {
		return activeSessions;
	}

	public static void setActiveSessions(int activeSessions) {
		BeerSessionCounter.activeSessions = activeSessions;
	}


	public void sessionCreated(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		activeSessions++;
		
	}


	public void sessionDestroyed(HttpSessionEvent arg0) {
		// TODO Auto-generated method stub
		activeSessions--;
	}

}
