package com.proj.web.vo;

public class HrefVO {
	private String title;
	private String link;
	
	public HrefVO() {
		// TODO Auto-generated constructor stub
	}

	public HrefVO(String title, String link) {
		super();
		this.title = title;
		this.link = link;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
	
}
