/**
 * 
 */
package com.nacre.onlineLoanApp.dto;

/**
 * @author Armaan
 *
 */
public class Address {
	
	private int addressId;
	private String localAddress;
	private City cityId;
	/**
	 * 
	 */
	public Address() {
		super();
	}
	/**
	 * @return the addressId
	 */
	public int getAddressId() {
		return addressId;
	}
	/**
	 * @param addressId the addressId to set
	 */
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	/**
	 * @return the localAddress
	 */
	public String getLocalAddress() {
		return localAddress;
	}
	/**
	 * @param localAddress the localAddress to set
	 */
	public void setLocalAddress(String localAddress) {
		this.localAddress = localAddress;
	}
	/**
	 * @return the cityId
	 */
	public City getCityId() {
		return cityId;
	}
	/**
	 * @param cityId the cityId to set
	 */
	public void setCityId(City cityId) {
		this.cityId = cityId;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Address [addressId=" + addressId + ", localAddress=" + localAddress + ", cityId=" + cityId + "]";
	}
	
	
	
	
	
	
	
	

}
