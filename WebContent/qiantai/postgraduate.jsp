<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
<link
	href='https://fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css"
	media="all" />
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<!--顶部置顶 -->
<script>
	$(document).ready(function() {
		var navoffeset = $(".agileits_header").offset().top;
		$(window).scroll(function() {
			var scrollpos = $(window).scrollTop();
			if (scrollpos >= navoffeset) {
				$(".agileits_header").addClass("fixed");
			} else {
				$(".agileits_header").removeClass("fixed");
			}
		});
	});
</script>
<!-- 顶部置顶 -->
</head>
<body>
	<!-- header -->
	<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="text" name="Product" value="Search a product..."
					onfocus="this.value = '';" required=""> <input
					type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">
			<div style="cursor: pointer;">
				<a href="/Test/mycart.do?id=${loginduser.id }"><span
					class="glyphicon glyphicon-shopping-cart my-cart-icon"><i
						class="badge badge-notify my-cart-badge"></i></span></a>
			</div>
		</div>
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"><i
						class="fa fa-user" aria-hidden="true"><span class="caret"></span>&nbsp;&nbsp;${loginduser.name }</i></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
								<li><a href="/Test/logout.do">退出登录</a></li>
							</ul>
						</div>
					</div></li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2>
				<a href="/Test/mailus.do">Contact Us</a>
			</h2>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="logo_products">
		<div class="container">
			<div class="w3ls_logo_products_left">
				<h1>
					<a href="#"><span>H H X Y</span> Store</a>
				</h1>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="special_items">
					<li><a href="/Test/index.do">消息</a><i>/</i></li>
					<li><a href="#div2">服务</a><i>/</i></li>
					<li><a href="/Test/services.do">常见问题</a></li>
				</ul>
			</div>
			<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>133 7071
						5219</li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><a
						href="mailto:store@grocery.com">1540669871@qq.com</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //header -->
	<!-- products-breadcrumb -->
	<div class="products-breadcrumb">
		<div class="container">
			<ul>
				<li><i class="fa fa-home" aria-hidden="true"></i><a
					href="/Test/index.do">Home</a><span>|</span></li>
				<li></li>
			</ul>
		</div>
	</div>
	<!-- //products-breadcrumb -->
	<!-- banner -->
	<div class="banner">
		<div class="w3l_banner_nav_left">
			<nav class="navbar nav_bottom"> <!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
				<ul class="nav navbar-nav nav_1">
					<c:forEach items="${gslist }" var="gs">
						<li><a href="getgoods.do?goodsid=${gs.id }">${gs.name }</a></li>
					</c:forEach>
				</ul>
			</div>
			<!-- /.navbar-collapse --> </nav>
		</div>
		<div class="w3l_banner_nav_right">
			<!-- kaoyanziliao -->
			<div
				class="w3ls_w3l_banner_nav_right_grid1 w3ls_w3l_banner_nav_right_grid1_veg">
				<c:forEach items="${glist }" var="gg">
					<div
						class="col-md-3 w3ls_w3l_banner_left w3ls_w3l_banner_left_asdfdfd">
						<div class="hover14 column">
							<div
								class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
								<div class="agile_top_brand_left_grid_pos">
									<img src="images/offer.png" alt=" " class="img-responsive" />
								</div>
								<div class="agile_top_brand_left_grid1">
									<figure>
									<div class="snipcart-item block">
										<div class="snipcart-thumb">
											<a href="#"><img src="/Test/qiantai/images/${gg.images }"
												alt=" " class="img-responsive" /></a>
											<p>${gg.name }</p>
											<h4>${gg.price }</h4>
											<br> <font color="gray" size="1px">&nbsp;库存：${gg.account }</font>
										</div>
										<div class="snipcart-details">
											<a href="/Test/addtocart.do?id=${gg.id }&user_id=${loginduser.id}">
												<button class="btn btn-danger my-cart-btn hvr-sweep-to-right">加入购物车</button>
											</a>
										</div>
									</div>
									</figure>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="fresh-vegetables"></div>
	<!-- footer -->
	<div class="footer" id="div2">
		<div class="container">
			<div class="clearfix"></div>
			<div class="agile_footer_grids">
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h4>付款方式</h4>
						<img src="images/card.png" alt=" " class="img-responsive" />
					</div>
				</div>
				<div class="col-md-3 w3_footer_grid agile_footer_grids_w3_footer">
					<div class="w3_footer_grid_bottom">
						<h5>联系我们</h5>
						<ul class="agileits_social_icons">
							<li><a href="#" class="facebook"><i
									class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"
									aria-hidden="true"></i></a></li>
							<li><a href="#" class="google"><i
									class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li><a href="#" class="instagram"><i
									class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#" class="dribbble"><i
									class="fa fa-dribbble" aria-hidden="true"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="wthree_footer_copy">
				<p>
					Copyright &copy; 2016.Company name All rights reserved.More
					Templates <a href="http://www.cssmoban.com/" target="_blank"
						title="版权所有">刘义景</a>
			</div>
		</div>
	</div>
	<!-- //footer -->
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		function check() {
			$("#loginErrorModal").modal();
			return false;
		}
		$(document).ready(function() {
			$(".dropdown").hover(function() {
				$('.dropdown-menu', this).stop(true, true).slideDown("fast");
				$(this).toggleClass('open');
			}, function() {
				$('.dropdown-menu', this).stop(true, true).slideUp("fast");
				$(this).toggleClass('open');
			});
		});
	</script>
</body>
</html>
