/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class BankServices {
	private int bankServiceId;
	private String creditCardServices;
	private String debitCardServices;
	private Branch branchId;
	/**
	 * 
	 */
	public BankServices() {
		super();
	}
	/**
	 * @return the bankServiceId
	 */
	public int getBankServiceId() {
		return bankServiceId;
	}
	/**
	 * @param bankServiceId the bankServiceId to set
	 */
	public void setBankServiceId(int bankServiceId) {
		this.bankServiceId = bankServiceId;
	}
	/**
	 * @return the creditCardServices
	 */
	public String getCreditCardServices() {
		return creditCardServices;
	}
	/**
	 * @param creditCardServices the creditCardServices to set
	 */
	public void setCreditCardServices(String creditCardServices) {
		this.creditCardServices = creditCardServices;
	}
	/**
	 * @return the debitCardServices
	 */
	public String getDebitCardServices() {
		return debitCardServices;
	}
	/**
	 * @param debitCardServices the debitCardServices to set
	 */
	public void setDebitCardServices(String debitCardServices) {
		this.debitCardServices = debitCardServices;
	}
	/**
	 * @return the branchId
	 */
	public Branch getBranchId() {
		return branchId;
	}
	/**
	 * @param branchId the branchId to set
	 */
	public void setBranchId(Branch branchId) {
		this.branchId = branchId;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "BankServices [bankServiceId=" + bankServiceId + ", creditCardServices=" + creditCardServices
				+ ", debitCardServices=" + debitCardServices + ", branchId=" + branchId + "]";
	}
	
	
	

}
