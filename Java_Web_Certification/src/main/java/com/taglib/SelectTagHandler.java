package com.taglib;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectTagHandler  extends SimpleTagSupport {
	private List optionsList;
	private String name;
	private String size;
	
	private static final String ATTR_TEMPLATE = "%s='%s'";
	private static final String OPTION_TEMPLATE = " <option value='%1$s'> %1$s </option>";
	
	public void setOptionsList(List optionsList) {
		this.optionsList = optionsList;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSize(String size) {
		this.size = size;
	}
	
	@Override
	public void doTag() throws JspException, IOException {
		
		
		
		PageContext pageContext = (PageContext)getJspContext();
		JspWriter out = pageContext.getOut();
		
		// Start the HTML <select> tag with HTML-specific attributes
		out.print("<select ");
		out.print(String.format(ATTR_TEMPLATE, "name", this.name));
		out.print(String.format(ATTR_TEMPLATE, "size", this.size));
		out.println('>');
		
		for(Object option : this.optionsList){
			String optionTag = String.format(OPTION_TEMPLATE, option.toString());
			out.println(optionTag);
		}
		out.println(" </select>");
	}
	
	
	
}
