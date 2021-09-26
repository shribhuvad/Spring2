/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bean;

import javax.persistence.*;

/**
 *
 * @author Owner
 */
@Entity
@Table(name = "r_cust")
public class Customer {
    
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name="cust_id")
	private String custId;
	
	@Column(name="cust_email")
	private String emailId;
	
	@Column(name="cust_pass")
	private String password;
	
	@Column(name="cust_name")
	private String name;
	
	@Column(name="cust_phoneNo")
	private String phoneNo;
	
	@Column(name="roll")
	private int roll;
	
	@Transient
	private String Confirmpassword;
	
	@Transient
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getConfirmpassword() {
		return Confirmpassword;
	}

	public void setConfirmpassword(String Confirmpassword) {
		this.Confirmpassword = Confirmpassword;
	}

}
