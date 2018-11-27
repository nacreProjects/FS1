/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class Login {
	private int loginId;
	private String userName;
	private String password;
	private Role RoleId;
	private Customer cid;
	/**
	 * 
	 */
	public Login() {
		super();
	}
	/**
	 * @return the loginId
	 */
	public int getLoginId() {
		return loginId;
	}
	/**
	 * @param loginId the loginId to set
	 */
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}
	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the roleId
	 */
	public Role getRoleId() {
		return RoleId;
	}
	/**
	 * @param roleId the roleId to set
	 */
	public void setRoleId(Role roleId) {
		RoleId = roleId;
	}
	/**
	 * @return the cid
	 */
	public Customer getCid() {
		return cid;
	}
	/**
	 * @param cid the cid to set
	 */
	public void setCid(Customer cid) {
		this.cid = cid;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Login [loginId=" + loginId + ", userName=" + userName + ", password=" + password + ", RoleId=" + RoleId
				+ ", cid=" + cid + "]";
	}
	
	
	
	
}
