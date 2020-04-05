package com.proj.web.vo;

public class HrefVO {
	private String link;
	
	public HrefVO() {
		// TODO Auto-generated constructor stub
	}

	public HrefVO(String link) {
		super();
		this.link = link;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Override
	public String toString() {
		return "HrefVO [link=" + link + "]";
	}
	
	
}
