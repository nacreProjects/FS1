/**
 * 
 */
package com.nacre.onlineLoanApp.test;

import java.sql.Connection;

import com.nacre.onlineLoanApp.db_util.DbUtil;
import com.nacre.onlineLoanApp.exception.DatabaseException;

/**
 * @author Armaan
 *
 */
public class Test {
	public static void main(String[] args) throws DatabaseException {
		
		
		Connection con=DbUtil.getConnection();
		System.out.println(con);
		
	}

}
