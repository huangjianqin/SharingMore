package org.sharingmore.entity;

import java.util.Date;
import java.util.Set;

import javax.persistence.*;

public class User {
	private int id;
	private String name;
	private String password;
	private String tel;
	private String sex;
	private Date birth;
	private Set shares;
	private Set collectUsers;
	private Set collectShares;
	private Set likes;
	public User(){
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public Set getShares() {
		return shares;
	}
	public void setShares(Set shares) {
		this.shares = shares;
	}
	public Set getCollectUsers() {
		return collectUsers;
	}
	public void setCollectUsers(Set collectUsers) {
		this.collectUsers = collectUsers;
	}
	public Set getCollectShares() {
		return collectShares;
	}
	public void setCollectShares(Set collectShares) {
		this.collectShares = collectShares;
	}
	public Set getLikes() {
		return likes;
	}
	public void setLikes(Set likes) {
		this.likes = likes;
	}
	
	
}
