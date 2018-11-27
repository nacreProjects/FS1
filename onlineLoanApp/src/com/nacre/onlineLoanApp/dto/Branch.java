/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class Branch {
	
	private int branchId;
	private String branchName;
	private Bank bankId;
	private Customer customerId;
	private String pancard;
	/**
	 * 
	 */
	public Branch() {
		super();
	}
	/**
	 * @return the branchId
	 */
	public int getBranchId() {
		return branchId;
	}
	/**
	 * @param branchId the branchId to set
	 */
	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}
	/**
	 * @return the branchName
	 */
	public String getBranchName() {
		return branchName;
	}
	/**
	 * @param branchName the branchName to set
	 */
	public void setBranchName(String branchName) {
		this.branchName = branchName;
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
	/**
	 * @return the customerId
	 */
	public Customer getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(Customer customerId) {
		this.customerId = customerId;
	}
	/**
	 * @return the pancard
	 */
	public String getPancard() {
		return pancard;
	}
	/**
	 * @param pancard the pancard to set
	 */
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Branch [branchId=" + branchId + ", branchName=" + branchName + ", bankId=" + bankId + ", customerId="
				+ customerId + ", pancard=" + pancard + "]";
	}
	
	
	
	
	

}
