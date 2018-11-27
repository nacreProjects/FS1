/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class LoanServicesDetails {
	
	
	private int loanId;
	private String loanName;
	private double loanInterest;
	private double loanAmount;
	private int tenure;
	private String loanServices;
	private Bank bankId;
	/**
	 * 
	 */
	public LoanServicesDetails() {
		super();
	}
	/**
	 * @return the loanId
	 */
	public int getLoanId() {
		return loanId;
	}
	/**
	 * @param loanId the loanId to set
	 */
	public void setLoanId(int loanId) {
		this.loanId = loanId;
	}
	/**
	 * @return the loanName
	 */
	public String getLoanName() {
		return loanName;
	}
	/**
	 * @param loanName the loanName to set
	 */
	public void setLoanName(String loanName) {
		this.loanName = loanName;
	}
	/**
	 * @return the loanInterest
	 */
	public double getLoanInterest() {
		return loanInterest;
	}
	/**
	 * @param loanInterest the loanInterest to set
	 */
	public void setLoanInterest(double loanInterest) {
		this.loanInterest = loanInterest;
	}
	/**
	 * @return the loanAmount
	 */
	public double getLoanAmount() {
		return loanAmount;
	}
	/**
	 * @param loanAmount the loanAmount to set
	 */
	public void setLoanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	}
	/**
	 * @return the tenure
	 */
	public int getTenure() {
		return tenure;
	}
	/**
	 * @param tenure the tenure to set
	 */
	public void setTenure(int tenure) {
		this.tenure = tenure;
	}
	/**
	 * @return the loanServices
	 */
	public String getLoanServices() {
		return loanServices;
	}
	/**
	 * @param loanServices the loanServices to set
	 */
	public void setLoanServices(String loanServices) {
		this.loanServices = loanServices;
	}
	/**
	 * @return the bankId
	 */
	public Bank getBankId() {
		return bankId;
	}
	/**
	 * @param bankId the bankId to set
	 */
	public void setBankId(Bank bankId) {
		this.bankId = bankId;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LoanServicesDetails [loanId=" + loanId + ", loanName=" + loanName + ", loanInterest=" + loanInterest
				+ ", loanAmount=" + loanAmount + ", tenure=" + tenure + ", loanServices=" + loanServices + ", bankId="
				+ bankId + "]";
	}
	
	
	
	
	
	

}
