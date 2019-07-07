<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="/Test/res/static/css/main.css">
<link rel="stylesheet" type="text/css" href="/Test/res/layui/css/layui.css">
<script type="text/javascript" src="/Test/res/layui/layui.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>
	<div class="site-nav-bg">
		<div class="site-nav w1200">
			<p class="sn-back-home">
				<i class="layui-icon layui-icon-home"></i> <a href="/Test/index.do">首页</a>
			</p>
		</div>
	</div>
	<div class="header">
		<div class="headerLayout w1200">
			<div class="headerCon">
				<h1 class="mallLogo">
					<font face="Times New Roman" color="blue">HHXY Shop</font>
				</h1>
				<div class="mallSearch"></div>
			</div>
		</div>
	</div>
	<div class="content content-nav-base shopcart-content">
		<div class="main-nav">
			<div class="inner-cont0">
				<div class="inner-cont1 w1200">
					<div class="inner-cont2"></div>
				</div>
			</div>
		</div>
		<div class="cart w1200">
			<div class="cart-table-th">
				<div class="th th-chk">
					<div class="select-all">
						<div class="cart-checkbox">
							<input class="check-all check" id="allChecked" type="checkbox"
								value="true">
						</div>
						<label>&nbsp;&nbsp;全选</label>
					</div>
				</div>
				<div class="th th-item">
					<div class="th-inner">商品</div>
				</div>
				<div class="th th-price">
					<div class="th-inner">单价</div>
				</div>
				<div class="th th-amount">
					<div class="th-inner">数量</div>
				</div>
				<div class="th th-sum">
					<div class="th-inner">小计</div>
				</div>
				<div class="th th-op">
					<div class="th-inner">操作</div>
				</div>
			</div>
		<%-- 	<form action="updateo.do?gid=${ot.id }"> --%>
				<div class="OrderList">
					<div class="order-content" id="list-cont" class="ab">
						<c:forEach items="${otlist}" var="ot">
							<ul class="item-content layui-clear" class="cb">
								<li class="th th-chk">
									<div class="select-all">
										<div class="cart-checkbox">
											<input class="CheckBoxShop check" id="" type="checkbox"
												num="all" name="select-all" value="true">
										</div>
									</div>
								</li>
								<li class="th th-item">
									<div class="item-cont">
										<a href="javascript:;"><img
											src="/Test/qiantai/images/${ot.gimg.images }" alt=""></a>
										<div class="text">
											<div class="title" style="font-family: 幼圆">${ot.gimg.name }</div>
											<p>
												<span style="font-size: 2px">购入时间：${ot.gimg.shoptime }</span>
											</p>
										</div>
									</div>
								</li>
								<li class="th th-price"><span class="th-su">${ot.gimg.price }</span>
								</li>
								<li class="th th-amount">
									<div class="box-btn layui-clear">
										<div class="less layui-btn">-</div>
										<input class="Quantity-input" value="${ot.account }"
											disabled="disabled">
										<div class="add layui-btn">+</div>
									</div>
								</li>
								<li class="th th-sum"><span class="sum" name="sum">${ot.xiaoji }</span>
								</li>
								<li class="th th-op"><span class="dele-btn"><a
										href="/Test/delete.do?oid=${ot.id }">删除</a></span></li>
							</ul>
						</c:forEach>
					</div>
				</div>
				<div class="FloatBarHolder layui-clear">
					<div class="th th-chk">
						<div class="select-all">
							<div class="cart-checkbox">
								<input class="check-all check" id="check-all" name="select-all"
									type="checkbox" value="true">
							</div>
							<label>&nbsp;&nbsp;已选<span class="Selected-pieces">0</span>件
							</label>
						</div>
					</div>
					<div class="th batch-deletion"></div>
					<div class="th Settlement">
					    
						<button class="layui-btn"  id="getAll">结算</button>
					</div>
					<div class="th total">
						<p>
							应付：<span class="pieces-total">0</span>
						</p>
					</div>
				</div>
			<!-- </form> -->
		</div>
	</div>
	
</body>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
$("#allChecked").change(function(event){
	if(($("#allChecked"))[0].checked)
    {
		for(var i=0;i<$("#list-cont").children().length;i++)
		{
	        var list=$("#list-cont").children()[i]//遍历每一项
	        $(list).find("input")[0].checked=true//为每一项打上对勾
			
		}
    }		
})
$("#getAll").click(function(event){

	var sum=0;//sum为累加器
	for(var i=0;i<$("#list-cont").children().length;i++)
	{
		list=$("#list-cont").children()[i]//遍历每一个节点
		if(($(list).find("input"))[0].checked)//如果被选中则求和
		{
			sum=sum+Number(($(list).find("span.sum"))[0].innerHTML)//求和操作
			
		}	
	}
	$(".pieces-total")[0].innerHTML=sum
	console.log(sum)
	//sum为你所求的价格总和
	//后面加上你所需的业务逻辑
})
</script>
</html>