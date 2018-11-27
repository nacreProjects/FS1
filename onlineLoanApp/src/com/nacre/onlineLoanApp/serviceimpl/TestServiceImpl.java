/**
 * 
 */
package com.nacre.onlineLoanApp.serviceimpl;

import com.nacre.onlineLoanApp.dao.TestDao;
import com.nacre.onlineLoanApp.daoimpl.TestDaoimpl;
import com.nacre.onlineLoanApp.servicei.TestService;

/**
 * @author Armaan
 *
 */
public class TestServiceImpl implements TestService{

	/* (non-Javadoc)
	 * @see com.nacre.onlineLoanApp.servicei.TestService#testService()
	 */
	@Override
	public void testService() {
		// TODO Auto-generated method stub
		
		//calling  dao method
		
		
		TestDao testDao=new TestDaoimpl();
		testDao.test();
		
		
	}

}
