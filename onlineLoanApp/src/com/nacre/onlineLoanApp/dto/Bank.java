/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class Bank {
	private int BankId;
	private String bankName;
	/**
	 * 
	 */
	public Bank() {
		super();
	}
	/**
	 * @return the bankId
	 */
	public int getBankId() {
		return BankId;
	}
	/**
	 * @param bankId the bankId to set
	 */
	public void setBankId(int bankId) {
		BankId = bankId;
	}
	/**
	 * @return the bankName
	 */
	public String getBankName() {
		return bankName;
	}
	/**
	 * @param bankName the bankName to set
	 */
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Bank [BankId=" + BankId + ", bankName=" + bankName + "]";
	}
	
	
	

}
