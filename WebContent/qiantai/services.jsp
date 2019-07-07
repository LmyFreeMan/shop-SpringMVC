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
<style type="text/css">
.w3l_panel_group_faq {
	margin-top: 10px;
}
</style>
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
					<li><a href="index.do"">消息</a><i>/</i></li>
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
					href="index.do">Home</a><span>|</span></li>
				<li>常见问题</li>
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
			<!-- faq -->
			<div class="faq">
				<div class="panel-group w3l_panel_group_faq" id="accordion"
					role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>如何取消订单？
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body panel_text">
								<font style="font-weight: bolder">自营：</font>&nbsp;&nbsp;&nbsp;订单在“等待到款”、“等待预售商品到货”、“正在配货”、“等待移仓”、“正在移仓”状态下，您可以进入“我的订单”，点击“取消”按钮直接取消订单。
								<br>
								<font style="font-weight: bolder">商家：</font>&nbsp;&nbsp;订单在“等待到款”、“等待预售商品到货”状态下，您可以进入“我的订单”点击“取消”按钮直接取消订单，订单在“正在配货”状态下，您可以进入“我的订单”，点击“取消”按钮申请取消订单，商家会在24小时内审核取消。
								<br>
								<br>注：如您已收到商品，可在确认收货后，登录“我的当当-在线申请/查询退换货”申请退货。
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>包邮吗？
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body panel_text">
								当自营普通快递送货上门和平邮订单：单张订单满30元包邮，不符合以上免运费标准的，每单收取3元运费。</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>服务说明
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body panel_text">
								“晚间送货”是当当新增的一种更便捷的增值服务，如您需要晚间送货，请下单时选择“普通快递晚间送货上门”，我们会尽可能的安排配送员在您订单预计送达时间当日的晚间19:00-22:00给您送货。
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour" aria-expanded="false"
									aria-controls="collapseFour"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>防诈骗手册
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body panel_text">
								1)当当及商家订单均不存在卡单、失效等情况。<br>
								2)客服人员不会通过私人手机号码、400电话和前缀带有“+”、“0”或含“（）”等类型的号码，告之您订单异常，也不会引导您ATM转账、QQ提供退款链接等操作。<br>
								3)订单实际状态请您以当当-我的订单页面中的交易状态为准。
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseFive" aria-expanded="false"
									aria-controls="collapseFive"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>注意事项
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body panel_text">
								1）由于业务发展变化、行政区域更名等因素，“晚间送货”服务区域，可能会不时有扩大、变更或调整，具体请以结算页支持选择送货方式为准。<br>
								2）第三方卖家发货订单不在“晚间送货”范围内。<br>
								3）如遇大型促销及其它不可抗力因素导致的意外情况，会影响订单夜间配送时间。
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //faq -->
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
	<!-- here stars scrolling icon -->
	<!-- //here ends scrolling icon -->
	<script type='text/javascript' src="js/jquery.mycart.js"></script>
	<script type="text/javascript">
		$(function() {
			var goToCartIcon = function($addTocartBtn) {
				var $cartIcon = $(".my-cart-icon");
				var $image = $(
						'<img width="30px" height="30px" src="'
								+ $addTocartBtn.data("image") + '"/>').css({
					"position" : "fixed",
					"z-index" : "999"
				});
				$addTocartBtn.prepend($image);
				var position = $cartIcon.position();
				$image.animate({
				}, 500, "linear", function() {
					$image.remove();
				});
			}
			$('.my-cart-btn').myCart({
				classCartIcon : 'my-cart-icon',
				classCartBadge : 'my-cart-badge',
				affixCartIcon : true,
				checkoutCart : function(products) {
					$.each(products, function() {
						console.log(this);
					});
				},
				clickOnAddToCart : function($addTocart) {
					goToCartIcon($addTocart);
				},
				getDiscountPrice : function(products) {
					var total = 0;
					$.each(products, function() {
						total += this.quantity * this.price;
					});
					return total * 1;
				}
			});
		});
	</script>
</body>
</html>
