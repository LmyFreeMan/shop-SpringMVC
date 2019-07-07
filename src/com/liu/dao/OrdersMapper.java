package com.liu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.One;
import org.springframework.stereotype.Repository;

import com.liu.entity.Orders;

@Repository
public interface OrdersMapper {
	//查询一个订单
	@Select("select * from orders where id=#{id}")
	public Orders get(int id);
	
	//分页查询所有订单
	@Select("select * from orders limit #{0},#{1}")
	@Results(@Result(column="user_id" ,property="author",one=@One(select="com.liu.dao.UserMapper.get")))
	public List<Orders> findAllByPage(int start,int psize);
	
	//查询订单数量
	@Select("select count(*) from orders")
	public int count();
}
