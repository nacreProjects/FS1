/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class LoanByBank {
	
	private BankServices bankserviceId;
	private LoanServicesDetails loanServiceDetailsId;
	/**
	 * 
	 */
	public LoanByBank() {
		super();
	}
	/**
	 * @return the bankserviceId
	 */
	public BankServices getBankserviceId() {
		return bankserviceId;
	}
	/**
	 * @param bankserviceId the bankserviceId to set
	 */
	public void setBankserviceId(BankServices bankserviceId) {
		this.bankserviceId = bankserviceId;
	}
	/**
	 * @return the loanServiceDetailsId
	 */
	public LoanServicesDetails getLoanServiceDetailsId() {
		return loanServiceDetailsId;
	}
	/**
	 * @param loanServiceDetailsId the loanServiceDetailsId to set
	 */
	public void setLoanServiceDetailsId(LoanServicesDetails loanServiceDetailsId) {
		this.loanServiceDetailsId = loanServiceDetailsId;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LoanByBank [bankserviceId=" + bankserviceId + ", loanServiceDetailsId=" + loanServiceDetailsId + "]";
	}
	
	
	

}
