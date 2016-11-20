package org.sharingmore.entity;

import java.util.List;
import java.util.Set;

import javax.persistence.*;

public class Share {
	private int id;
	private String text;
	private Set pictures;
	private User user;
	private Set comments;
	private Set likes;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Set getPictures() {
		return pictures;
	}
	public void setPictures(Set pictures) {
		this.pictures = pictures;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Set getComments() {
		return comments;
	}
	public void setComments(Set comments) {
		this.comments = comments;
	}
	public Set getLikes() {
		return likes;
	}
	public void setLikes(Set likes) {
		this.likes = likes;
	}
	
}
