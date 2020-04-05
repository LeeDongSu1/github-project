package com.proj.web.vo;

public class MemberVO {
	private String title;
	private String teleNum;
	private String address;
	private String time;
	private String menu;
	private String category;
	
	public MemberVO() {
		// TODO Auto-generated constructor stub
	}

	public MemberVO(String title, String teleNum, String address, String time, String menu, String category) {
		super();
		this.title = title;
		this.teleNum = teleNum;
		this.address = address;
		this.time = time;
		this.menu = menu;
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTeleNum() {
		return teleNum;
	}

	public void setTeleNum(String teleNum) {
		this.teleNum = teleNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "MemberVO [title=" + title + ", teleNum=" + teleNum + ", address=" + address + ", time=" + time
				+ ", menu=" + menu + ", category=" + category + "]";
	}
	
}
