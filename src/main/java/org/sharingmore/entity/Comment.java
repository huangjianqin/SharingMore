package org.sharingmore.entity;

import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.*;

public class Comment {
	private int id;
	private User observer;
	private String text;
	private Share share;
	private Date commentDate;
	private Set replies;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getObserver() {
		return observer;
	}
	public void setObserver(User observer) {
		this.observer = observer;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public Share getShare() {
		return share;
	}
	public void setShare(Share share) {
		this.share = share;
	}
	public Date getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public Set getReplies() {
		return replies;
	}
	public void setReplies(Set replies) {
		this.replies = replies;
	}
	
}
