package com.liu.entity;



public class Goods {
	
	private Integer id;
	private Integer goodss_id;
	private String name;
	private Double price;
	private Integer account;
	private String images;
	private String shoptime;
	private Goodss goodss;
	public Goodss getGoodss() {
		return goodss;
	}
	public void setGoodss(Goodss goodss) {
		this.goodss = goodss;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getGoodss_id() {
		return goodss_id;
	}
	public void setGoodss_id(Integer goodss_id) {
		this.goodss_id = goodss_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getAccount() {
		return account;
	}
	public void setAccount(Integer account) {
		this.account = account;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getShoptime() {
		return shoptime;
	}
	public void setShoptime(String shoptime) {
		this.shoptime = shoptime;
	}
	
	
}
