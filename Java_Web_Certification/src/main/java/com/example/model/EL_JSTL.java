package com.example.model;

import javax.swing.text.html.HTML;

import org.w3c.dom.html.HTMLElement;

public class EL_JSTL {
	
	private String currentTip;
	private String[] movieList;
	
	public EL_JSTL(){
		//currentTip = "<b></b> tags make things bold!";
	}

	public String getCurrentTip() {
		return currentTip;
	}

	public String[] getMovieList() {
		return movieList;
	}

	public void setMovieList(String[] movieList) {
		this.movieList = movieList;
	}

	public void setCurrentTip(String currentTip) {
		this.currentTip = currentTip;
	}
	
	
	
	/*public static String getConvertedCurrentTip(){
		return 
	}
*/
}
