/**
 * 
 */
package com.nacre.onlineLoanApp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nacre.onlineLoanApp.servicei.TestService;
import com.nacre.onlineLoanApp.serviceimpl.TestServiceImpl;

/**
 * @author Armaan
 *
 */
public class TestServlet extends HttpServlet {
	
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doGet(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		
		
		//call service method
		TestService testService = new TestServiceImpl();
		
		testService.testService();
		
	}

}
