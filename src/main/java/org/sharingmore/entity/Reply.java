package org.sharingmore.entity;

import java.util.Date;
import javax.persistence.*;

public class Reply {

	private int id;
	private String text;
	private User respondent;
	private User byReply;
	private Date replyDate;
	private Comment comment;
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
	public User getRespondent() {
		return respondent;
	}
	public void setRespondent(User respondent) {
		this.respondent = respondent;
	}
	public User getByReply() {
		return byReply;
	}
	public void setByReply(User byReply) {
		this.byReply = byReply;
	}
	public Date getReplyDate() {
		return replyDate;
	}
	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	
}
