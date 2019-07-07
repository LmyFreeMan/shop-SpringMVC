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
	<form action="/Test/Orders.do" method="post">
		<table class="table table-striped table-condensed">
			<thead>
				<tr>
					<th>选项</th>
					<th>ID</th>
					<th>用户名</th>
					<th>订单金额</th>
					<th>订单时间</th>
					<th>订单状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="o" items="${page.result }">
					<tr class="active">
						<td><label class="checkbox-inline"> <input
								type="checkbox" id="inlineCheckbox1" value="option1">
						</label></td>
						<td>${o.id }</td>
						<td>${o.author.name }</td>
						<td>${o.price }</td>
						<td>${o.ordertime }</td>
						<td>${o.status }</td>
						<td><a href="/Test/get.do?uid=${u.id }"><button
									type="button" class="btn btn-xs btn-info">修改信息</button></a> <a
							href="/Test/deleteU.do?uid=${u.id }"><button type="button"
									class="btn btn-xs btn-danger">删除用户</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</form>
</body>
</html>