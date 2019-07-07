<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
</head>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
<body>
	<form class="form-horizontal" role="form" method="post"
		action="editGoods.do?id=${g.id }">
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><font
				color="red">*</font>商品名称</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="name"
					value="${g.name  }">
			</div>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label"><font
				color="red">*</font>商品价格</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="price"
					value="${g.price  }">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label"><font
				color="red">*</font>商品数量</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="account"
					value="${g.account  }">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label">购入时间</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" disabled name="shoptime"
					value="${g.shoptime }">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label">图片</label>
			<div class="col-sm-5">
				<img src="/Test/qiantai/images/${g.images}" name="images"
					height="140" width="200">
			</div>
		</div>
		<div class="col-sm-offset-5 col-sm-8">
			&nbsp;&nbsp;&nbsp;&nbsp;<br>
			<button type="submit" class="btn btn-default">提交</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-default" onclick="goBack()">返回</button>
		</div>
		<br>
		<br>
		<br>
		<p style="font-size: 13px">
			<font color="red">注：*</font>&nbsp;为可修改内容
		</p>
	</form>
	<script>
	</script>
</body>
</html>