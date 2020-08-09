package com.l;

import java.util.List;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.entity.todo;

public class MyListener implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		
	
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		
		System.out.println("context created....");
		List<todo> list = new ArrayList<todo>();
		ServletContext context = sce.getServletContext();
		context.setAttribute("list", list);
		
		
	}

	
}
