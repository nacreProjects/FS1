/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

import java.sql.Blob;

/**
 * @author Armaan
 *
 */
public class LoanApprovalRegistration {
	
	private int bankLoanAppId;
	private int customerId;
	private String customerFullName;
	private String accountType;
	private LoanServicesDetails loanTypeId;
	private double netMonthlySalary;
	private String employmentType;
	private String panNo;
	private String aadharNo;
	private Blob IdProof;
	private Blob addressProof;
	
	private String mobileNo;
	private String ITR;
	
	private double annualBalance;
	private Status StatusId;
	
	
	
	
	
	

}
