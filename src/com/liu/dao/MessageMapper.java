package com.liu.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.springframework.stereotype.Repository;

import com.liu.entity.Message;

@Repository
public interface MessageMapper {

	//根据user_id插入留言
	@Insert("insert into message(user_id,content,messagetime) values(#{user_id},#{content},#{messagetime})")
	@Results(@Result(column="user_id",property="author",one=@One(select="com.liu.dao.UserMapper.get")))
	public int insert(Message m);
}
