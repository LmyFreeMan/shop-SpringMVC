package com.liu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.liu.dao.GoodsMapper;
import com.liu.dao.OrdersMapper;
import com.liu.dao.UserMapper;
import com.liu.entity.Goods;
import com.liu.entity.Goodss;
import com.liu.entity.Orders;
import com.liu.entity.User;
import com.liu.util.Page;

@Service
public class UserService {

	@Autowired
	UserMapper uMapper;
	@Autowired
	GoodsMapper gMapper;
	@Autowired
	OrdersMapper oMapper;
	
	//用户分页
	public Page<User> findAllBypage(int pno,int psize){
		Page<User> page=new Page<User>(pno,psize);
		page.setTotalCount(uMapper.count());
		int start = page.getOffset();
		List<User> list=uMapper.findAllByPage(start, psize);
		page.setResult(list);
		return page;
	}
	
	//商品分页
	public Page<Goods> findAllGoodsBypage(int pno,int psize){
		Page<Goods> page=new Page<Goods>(pno,psize);
		page.setTotalCount(gMapper.count());
		int start = page.getOffset();
		List<Goods> list=gMapper.findAllByPage(start, psize);
		page.setResult(list);
		return page;
	}
	
	//订单分页
	public Page<Orders> findAllOrdersBypage(int pno,int psize){
		Page<Orders> page=new Page<Orders>(pno,psize);
		page.setTotalCount(oMapper.count());
		int start = page.getOffset();
		List<Orders> list=oMapper.findAllByPage(start, psize);
		page.setResult(list);
		return page;
	}
}
