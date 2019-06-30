package com.hui.entity;

import java.sql.Date;

public class Login {
	private int u_id;
	private String password;
	private String username;
	private int auth;
	private String name;
	private String gender;
	private Date birth;
	private String phone;
	private String email;
	private String position;
	private int wage;
	private String head;
	
	
	public Login() {
		super();
	}

	
	public Login(int u_id, String password, String username, int auth, String name, String gender, Date birth,
			String phone, String email, String position, int wage, String head) {
		super();
		this.u_id = u_id;
		this.password = password;
		this.username = username;
		this.auth = auth;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.phone = phone;
		this.email = email;
		this.position = position;
		this.wage = wage;
		this.head = head;
	}


	public int getU_id() {
		return u_id;
	}


	public void setU_id(int u_id) {
		this.u_id = u_id;
	}


	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getAuth() {
		return auth;
	}
	public void setAuth(int auth) {
		this.auth = auth;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public int getWage() {
		return wage;
	}
	public void setWage(int wage) {
		this.wage = wage;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}

	@Override
	public String toString() {
		return "\nLogin [u_id=" + u_id + ", password=" + password + ", username=" + username + ", name=" + name
				+ ", gender=" + gender + "]";
	}
}
