package com.liu.controller;



import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liu.dao.AdminMapper;
import com.liu.dao.GoodsMapper;
import com.liu.dao.UserMapper;
import com.liu.entity.Goods;
import com.liu.entity.Goodss;
import com.liu.entity.Orders;
import com.liu.entity.User;
import com.liu.service.UserService;
import com.liu.util.Page;

@Controller
public class AdminController {

	@Autowired
	AdminMapper aMapper;
	@Autowired
	UserMapper uMapper;
	@Autowired
	HttpServletRequest request;
	@Autowired
	UserService uService;
	@Autowired
	GoodsMapper gMapper;
	
	//分页查询所有商品
	@RequestMapping("findGoods.do")
	public String findAllGoodsByPage(Integer pno,Integer psize){
		if(pno==null){
			pno=1;	
		}
		if(psize==null){
			psize=5;		
		}
		Page<Goods> page=uService.findAllGoodsBypage(pno, psize);
		request.setAttribute("page", page);
		return "findGoods";
				
	}
	
	//分页查询所有用户
	@RequestMapping("findAll.do")
	public String findAllByPage(Integer pno,Integer psize){
		if(pno==null){
			pno=1;	
		}
		if(psize==null){
			psize=5;		
		}
		Page<User> page=uService.findAllBypage(pno, psize);
		request.setAttribute("page", page);
		return "findAll";
				
	}
	
	//分页查询所有订单
	@RequestMapping("Orders.do")
	public String findAllOrdersByPage(Integer pno,Integer psize){
		if(pno==null){
			pno=1;	
		}
		if(psize==null){
			psize=5;		
		}
		Page<Orders> page=uService.findAllOrdersBypage(pno, psize);
		
		request.setAttribute("page", page);
		return "findOrders";
				
	}
	
	
	//查询一个用户
	@RequestMapping("get.do")
	public String getUserByid(Integer uid){
		User u=uMapper.get(uid);
		request.setAttribute("u", u);
		return "getUser";
	}
	
	//查询一个商品
	@RequestMapping("getGoods.do")
	public String getGoods(Integer gid){
		Goods g=gMapper.get(gid);
		request.setAttribute("g", g);
		return "getGoods";
	}
	
	
	//修改用户信息
	@RequestMapping("edit.do")
	public String editUser(User u){
		uMapper.update(u);
		return "redirect:findAll.do";
	}
	
	//修改商品信息
	@RequestMapping("editGoods.do")
	public String editGoods(Goods g){
		gMapper.update(g);
		return "redirect:findGoods.do";
	}
		
	//删除用户
	@RequestMapping("deleteU.do")
	public String delete(Integer uid){
		User u=uMapper.get(uid);
		uMapper.delete(uid);
		return "redirect:findAll.do";
	}
	
	//删除商品
	@RequestMapping("deleteGoods.do")
	public String deleteGoods(Integer gid){
		Goods g=gMapper.get(gid);
		gMapper.delete(gid);
		return "redirect:findGoods.do";
	}
	
	//新增商品
	@RequestMapping("insertGoods.do")
	public String insertGoods(Goods g){
		gMapper.insert(g);
		return "redirect:findGoods.do";
	}
	
	
	
	
	
}
