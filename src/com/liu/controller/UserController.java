package com.liu.controller;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.liu.dao.GoodsMapper;
import com.liu.dao.GoodssMapper;
import com.liu.dao.MessageMapper;
import com.liu.dao.OrdertimeMapper;
import com.liu.dao.UserMapper;
import com.liu.entity.Goods;
import com.liu.entity.Goodss;
import com.liu.entity.Message;
import com.liu.entity.OrderTime;
import com.liu.entity.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
@Controller
public class UserController {
	@Autowired
	UserMapper uMapper;
	@Autowired
	GoodsMapper gMapper;
	@Autowired
	GoodssMapper gsMapper;
	@Autowired
	HttpServletRequest request;
	@Autowired
	OrdertimeMapper otMapper;
	@Autowired
	MessageMapper mMapper;
	
	//登录
	@RequestMapping("login.do")
	public String dologin(String user,String pass){
		User u=uMapper.dologin(user, pass);
		HttpSession session=request.getSession();
		session.setAttribute("loginduser", u);
		
		if(u!=null){
			if("admin".equals(u.getName())){
				
				return "adminindex";
				
			}
			else{
				return "redirect:index.do";
			}
			
		}
		else{
			return "login";
		}
		
	}
	
	//主页
	@RequestMapping("index.do")
	public String index(){
		List<Goodss> glist=gsMapper.findAllG();
		request.setAttribute("glist", glist);
		HttpSession session=request.getSession();
		return "index";
	}
	
	//注销
	@RequestMapping("logout.do")
	public String logout(){
		HttpSession session=request.getSession();
		session.removeAttribute("loginduser");
		session.invalidate();
		return "login";
	}
	
	//根据goodss_id查询商品
	@RequestMapping("getgoods.do")
	public String getgoods(int goodsid){
		
		List<Goodss> gslist=gsMapper.findAllG();
		HttpSession session=request.getSession();
		request.setAttribute("gslist", gslist);
		List<Goods> glist=gMapper.getBygoodssid(goodsid);
		request.setAttribute("glist", glist);
		
		return "/qiantai/postgraduate";
	}
	
	
	//用户注册
	@RequestMapping("addUser.do")
	public String insert(User u){
		uMapper.insert(u);
		System.out.println(u.getName());
		return "redirect:login.do";
	}
	
	
	
	@RequestMapping("mailus.do")
	public String mailus(){
		List<Goodss> gslist=gsMapper.findAllG();
		HttpSession session=request.getSession();
		request.setAttribute("gslist", gslist);
		
		return "/qiantai/contact";
	}
	
	
	
	//根据user_id新增留言
	@RequestMapping("addMsg.do")
	public String insertmsg(Message m){
		HttpSession session=request.getSession();
		List<Goodss> gslist=gsMapper.findAllG();
		
		request.setAttribute("gslist", gslist);
		User u=(User) session.getAttribute("loginduser");
		m.setUser_id(u.getId());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String d=df.format(new Date());
		m.setMessagetime(d);
		String a=request.getParameter("Message");
		m.setContent(a);
		mMapper.insert(m);
		return "redirect:index.do";
	}
	
	
	
	@RequestMapping("services.do")
	public String services(){
		List<Goodss> gslist=gsMapper.findAllG();
		HttpSession session=request.getSession();
		request.setAttribute("gslist", gslist);
		
		return "/qiantai/services";
	}
	
	//加入购物车
	@RequestMapping("addtocart.do")
	public String inserto(int id){
		HttpSession session=request.getSession();
		User u=(User) session.getAttribute("loginduser");
		OrderTime o=new OrderTime();
		o.setUser_id(u.getId());
		Goods g=gMapper.get(id);
		o.setGoods_id(g.getId());
		o.setXiaoji(g.getPrice());	
		o.setAccount(1);
		otMapper.inserto(o);
		
		return "redirect:mycart.do?id="+o.getUser_id();
	}
	
	
	//查看购物车
	@RequestMapping("mycart.do")
	public String getByuserid(int id){
		List<OrderTime> otlist=otMapper.getByuserid(id);
		request.setAttribute("otlist", otlist);
		
		return "/qiantai/orders";
	}
	
	//删除购物车某一商品
	@RequestMapping("delete.do")
	public String deleteo(Integer oid){
		HttpSession session=request.getSession();
		User u=(User) session.getAttribute("loginduser");
		
		otMapper.deleteo(oid);
		
		return "redirect:mycart.do?id="+u.getId();
	}
	
}
