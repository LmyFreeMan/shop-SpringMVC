<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<form action="#" method="post">
		<table class="table table-bordered table-hover">
			<tr class="success">
				<th>id</th>
				<th>商品名称</th>
				<th>类别</th>
				<th>价格</th>
				<th>数量</th>
				<th>图片</th>
				<th>购入时间</th>
				<th>操作</th>
			</tr>
			<c:forEach var="g" items="${page.result }">
				<tr class="active">
					<td>${g.id }</td>
					<td>${g.name }</td>
					<td>${g.goodss.name }</td>
					<td>${g.price }</td>
					<td>${g.account }</td>
					<td><img alt="" width="70px" height="55px"
						src="/Test/qiantai/images/${g.images }"></td>
					<td>${g.shoptime }</td>
					<td><a href="/Test/getGoods.do?gid=${g.id }"><button
								type="button" class="btn btn-xs btn-info">修改信息</button></a> <a
						href="/Test/deleteGoods.do?gid=${g.id }"><button type="button"
								class="btn btn-xs btn-danger">删除商品</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<!--  分页 -->
	<div class="row">
		<div class="col-md-6" style="text-align: right;">
			<ul class="pagination">
				<c:if test="${!page.firstPage }">
					<li><a href="findGoods.do?pno=${page.pageNo-1 }">&laquo;</a></li>
				</c:if>
				<c:forEach var="i" items="${page.slider }">
					<li><a href="findGoods.do?pno=${i }">${i }</a></li>
				</c:forEach>
				<c:if test="${!page.lastPage }">
					<li><a href="findGoods.do?pno=${page.pageNo+1 }">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	共
	<b>${page.totalPages}</b>页,当前第
	<span>${page.pageNo}</span>页
</body>
</html>