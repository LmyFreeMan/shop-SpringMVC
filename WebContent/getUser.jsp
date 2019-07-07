<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>河北师范大学校内闲置物品交易平台</title>
<link rel="stylesheet" href="js/bootstrap/css/bootstrap.min.css">
</head>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
<body>
	<form class="form-horizontal" role="form" method="post"
		action="edit.do?id=${u.id }">
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">姓名</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="name" id="name"
					value="${u.name  }">
			</div>
		</div>
		<div class="form-group">
			<label for="firstname" class="col-sm-2 control-label">密码</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="password"
					value="${u.password  }" id="password">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label">性别</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="sex"
					value="${u.sex  }" id="lastname">
			</div>
		</div>
		<div class="form-group">
			<label for="lastname" class="col-sm-2  control-label">邮箱</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" id="email" name="email"
					value="${u.email }">
			</div>
			<div class="col-sm-offset-5 col-sm-8">
				&nbsp;&nbsp;&nbsp;&nbsp;</br>
				<button type="submit" class="btn btn-default">添加</button>
				&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="btn btn-default" onclick="goBack()">返回</button>
			</div>
		</div>
	</form>
</body>
</html>