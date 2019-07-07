<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<form class="form-horizontal" role="form" method="post"
		action="insertGoods.do?id=${g.id }">
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><b>商品名称</b></label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="name"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><b>商品类别</b></label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="goodss_id"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><b>商品价格</b></label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="price"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label"><b>商品数量</b></label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="account"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label"><b>购入时间</b></label>
			<div class="col-sm-5">
				<input type="date" class="form-control" name="shoptime"
					required="required">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label">图片</label>
			<div class="col-sm-5">
				<input type="file" class="form-control" name="images"
					required="required">
			</div>
		</div>
		<div class="col-sm-offset-5 col-sm-8">
			&nbsp;&nbsp;&nbsp;&nbsp;<br>
			<button type="submit" class="btn btn-default">添加</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-default" type="reset">重置</button>
		</div>
		<br>
		<br>
		<br>
	</form>
</body>
</html>