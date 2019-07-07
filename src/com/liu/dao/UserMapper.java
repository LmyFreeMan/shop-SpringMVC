package com.liu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import com.liu.entity.User;

@Repository
public interface UserMapper {
	//登录验证
	@Select("select * from user where name=#{0} and password=#{1}")
	public User dologin(String name,String password);
	//查询一个人
	@Select("select * from user where id=#{id}")
	public User get(int id); 
	//分页查询所有人
	@Select("select * from user limit #{0},#{1}")
	public List<User> findAllByPage(int start,int psize); 
	//用户数量
	@Select("select count(*) from user")
	public int count();
	//更新用户信息
	@Update("update user set name=#{name},password=#{password},sex=#{sex},email=#{email} where id=#{id}")
	public int update(User u);
	//新增用户
	@Insert("insert into user(name,password,sex,email) values(#{name},#{password},#{sex},#{email})")
	public int insert(User u);
	//删除用户
	@Delete("delete from user where id=#{id}")
	public int delete(int id);
	
	
}
