/**
 * 
 */
package com.nacre.onlineLoanApp.daoimpl;

import com.nacre.onlineLoanApp.dao.TestDao;
import com.nacre.onlineLoanApp.db_util.DbUtil;
import com.nacre.onlineLoanApp.exception.DatabaseException;

/**
 * @author Armaan
 *
 */
public class TestDaoimpl implements TestDao {

	/* (non-Javadoc)
	 * @see com.nacre.onlineLoanApp.dao.TestDao#test()
	 */
	@Override
	public void test() {
		// TODO Auto-generated method stub
		
		try {
			//creating connection by calling below method
			DbUtil.getConnection();
		} catch (DatabaseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
