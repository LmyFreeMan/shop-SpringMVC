package com.liu.dao;

import java.util.List;

import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import com.liu.entity.Goods;
import com.liu.entity.Goodss;

@Repository
public interface GoodssMapper {

	@Select("select * from goodss where id =#{id}")
	public Goodss get(int id);
	
	
	@Select("select * from goodss")
	public List<Goodss> findAllG(); 
}
