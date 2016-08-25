package com.lazioforeverBet.springmvc.dto;
// Generated 26-Jul-2016 17:30:16 by Hibernate Tools 5.1.0.Alpha1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Users generated by hbm2java
 */
@Entity
@Table(name = "users", schema = "public")
public class Users implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String userName;
	private String userPassword;

	public Users() {
	}

	public Users(Integer id, String userName, String userPassword) {
		this.id = id;
		this.userName = userName;
		this.userPassword = userPassword;
	}
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "user_name")
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "user_password")
	public String getUserPassword() {
		return this.userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
