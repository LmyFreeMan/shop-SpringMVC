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
	<form action="/Test/findAll.do" method="post">
		<table class="table table-bordered table-hover">
			<tr class="success">
				<th>id</th>
				<th>用户姓名</th>
				<th>用户密码</th>
				<th>用户性别</th>
				<th>电子邮箱</th>
				<th>操作一</th>
				<th>操作二</th>
			</tr>
			<c:forEach var="u" items="${page.result }">
				<tr class="active">
					<td>${u.id }</td>
					<td>${u.name }</td>
					<td>${u.password }</td>
					<td>${u.sex }</td>
					<td>${u.email }</td>
					<td><a href="/Test/get.do?uid=${u.id }"><button
								type="button" class="btn btn-xs btn-info">修改信息</button></a></td>
					<td><a href="/Test/deleteU.do?uid=${u.id }"><button
								type="button" class="btn btn-xs btn-danger">删除用户</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<!--  分页 -->
	<div class="row">
		<div class="col-md-6" style="text-align: right;">
			<ul class="pagination">
				<c:if test="${!page.firstPage }">
					<li><a href="findAll.do?pno=${page.pageNo-1 }">&laquo;</a></li>
				</c:if>
				<c:forEach var="i" items="${page.slider }">
					<li><a href="findAll.do?pno=${i }">${i }</a></li>
				</c:forEach>
				<c:if test="${!page.lastPage }">
					<li><a href="findAll.do?pno=${page.pageNo+1 }">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
	共
	<b>${page.totalPages}</b>页,当前第
	<span>${page.pageNo}</span>页
</body>
</html>