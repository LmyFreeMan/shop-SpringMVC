package com.liu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.liu.entity.OrderTime;

@Repository
public interface OrdertimeMapper {
	//根据goods_id查询商品
	@Select("select * from ordertime where goods_id=#{goodsid}")
	@Results(@Result(column="goods_id", property="gimg",one=@One(select="com.liu.dao.GoodsMapper.get")))
	public List<OrderTime> getBygoodsid(int goodsid);
	
	//根据user_id查询订单
	@Select("select * from ordertime where user_id=#{userid}")
	@Results({@Result(column="user_id", property="author",one=@One(select="com.liu.dao.UserMapper.get")),
		@Result(column="goods_id", property="gimg",one=@One(select="com.liu.dao.GoodsMapper.get")),
		@Result(column="user_id", property="orders",one=@One(select="com.liu.dao.OrdersMapper.get"))
	})
	public List<OrderTime> getByuserid(int userid);
	
	//购物车删除某一商品
	@Delete("delete from ordertime where id=#{id}")
	public int deleteo(int id);
	
	
	//购物车加入某一商品
	@Insert("insert into ordertime(user_id,goods_id,xiaoji,account) values(#{user_id},#{goods_id},#{xiaoji},#{account})")
	@Results({@Result(column="user_id", property="author",one=@One(select="com.liu.dao.UserMapper.get")),
		@Result(column="goods_id", property="gimg",one=@One(select="com.liu.dao.GoodsMapper.get")),
		@Result(column="user_id", property="orders",one=@One(select="com.liu.dao.OrdersMapper.get"))
	})
	public int inserto(OrderTime o);
}
