package com.liu.entity;

public class OrderTime {
	private Integer id;
	private Integer goods_id;
	private Integer user_id;
	private Integer account;
	private Double xiaoji;
	
	
	public Double getXiaoji() {
		return xiaoji;
	}
	public void setXiaoji(Double xiaoji) {
		this.xiaoji = xiaoji;
	}
	//添加图片属性
	private Goods gimg;
	
	//添加用户属性
	private User author;
	
	//添加订单总价
	private Orders orders;
	
	
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public User getAuthor() {
		return author;
	}
	public void setAuthor(User author) {
		this.author = author;
	}
	public Goods getGimg() {
		return gimg;
	}
	public void setGimg(Goods gimg) {
		this.gimg = gimg;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGoods_id() {
		return goods_id;
	}
	public void setGoods_id(Integer goods_id) {
		this.goods_id = goods_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Integer getAccount() {
		return account;
	}
	public void setAccount(Integer account) {
		this.account = account;
	}
	
}
