package com.liu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.liu.entity.Goods;
import com.liu.entity.Goodss;


public interface GoodsMapper {
	//查询一个商品
	@Select("select * from goods where id=#{id}")
	public Goods get(int id); 
	//分页查询所有商品
	@Select("select * from goods limit #{0},#{1}")
	@Results(@Result(column="goodss_id" ,property="goodss",one=@One(select="com.liu.dao.GoodssMapper.get")))
	public List<Goods> findAllByPage(int start,int psize); 
	
	
	@Select("select * from goods")
	@Results(@Result(column="goodss_id" ,property="goodss",one=@One(select="com.liu.dao.GoodssMapper.get")))
	public List<Goods> findAll(); 
	
	//根据goodss_id查询商品
	@Select("select * from goods where goodss_id=#{goodssid}")
	public List<Goods> getBygoodssid(int goodssid);
	
	
	//商品数量
	@Select("select count(*) from goods")
	public int count();
	//修改商品
	@Update("update goods set name=#{name},price=#{price},account=${account} where id=#{id}")
	public int update(Goods g);
	
	//新增商品
	@Insert("insert into goods(name,goodss_id,price,account,shoptime,images) values(#{name},#{goodss_id},#{price},#{account},#{shoptime},#{images})")
	public int insert(Goods g);
	//删除商品
	@Delete("delete from goods where id=#{id}")
	public int delete(int id);
}
