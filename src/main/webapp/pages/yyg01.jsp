<!DOCTYPE html>
<%@page contentType="text/html;charset=UTF-8"%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP Page</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/buttons.css" />
		<link rel="stylesheet" href="css/responsive-nav.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/flat-ui.min.css" />
		<link rel="stylesheet" href="css/animate.css">
		<link rel="stylesheet" href="css/style.css">
		<!--文件上传（下面两个文件）-->
		<link rel="stylesheet" href="css/fileinput.css" />
		<link rel="stylesheet" href="css/default.css" />
		<link rel="stylesheet" href="css/button-style.css" />

		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/stickUp.min.js"></script>
		<script type="text/javascript" src="js/responsive-nav.min.js"></script>
		<script type="text/javascript" src="js/flat-ui.min.js"></script>
		<script type="text/javascript" src="js/zepto.min.js"></script>
		<script type="text/javascript" src="js/iscroll-zoom.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<!--文件上传-->
		<script type="text/javascript" src="js/fileinput.js"></script>
		<script type="text/javascript" src="js/index.js"></script>

		<meta charset="UTF-8">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<script type="text/javascript">
			if(/Android (\d+\.\d+)/.test(navigator.userAgent)) {
				var version = parseFloat(RegExp.$1);
				if(version > 2.3) {
					var phoneScale = parseInt(window.screen.width) / 640;
					document.write('<meta name="viewport" content="width=640, minimum-scale = ' + phoneScale + ', maximum-scale = ' + phoneScale + ', target-densitydpi=device-dpi">');
				} else {
					document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');
				}
			} else {
				document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');
			}
		</script>

		<style type="text/css">
			#searchBox{
				margin-left: 20%;
			}
			#bnt_share{
				background: #3498db;
			}
			
			/*以下四个用于修改滚动条*/
			::-webkit-scrollbar{
				width: 8px;
				height: 16px;
			}
			::-webkit-scrollbar-track-piece{
				background: rgba(158, 188, 188, 0.72);
				-webkit-border-radius: 6px;
			}
			::-webkit-scrollbar-thumb:vertical{
				background-color: rgba(0, 77, 170, 0.6);
				-webkit-border-radius: 6px;
			}
			::-webkit-scrollbar-thumb:horizontal{
				background-color: rgba(158, 188, 188, 0.72);
				-webkit-border-radius: 6px;
			}
			
		</style>

	</head>

	<body style="background-color: #444;">
		<div class="container">
			<div class="row" id="yyg-nav">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<%-- logo--%>
						<div class="navbar-header">
							<a class="navbar-brand" href="#">Brand</a>
						</div>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<%-- 搜索框--%>
							<form class="navbar-form navbar-left" role="search" id="searchBox">
								<div class="form-group" >
									<input type="text" class="form-control" placeholder="Search" id="searchKey">
								</div>
								<button type="submit" class="btn btn-default">搜索</button>
							</form>
							<%-- 用户头像--%>
							<ul class="nav navbar-nav navbar-right">
								<li class="dropdown">
									<img style="width:53px;height:53px" alt="..." src="img/HBuilder.png">
								</li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>

			</div>

			<div class="row">
				<div class="col-xs-1">
					<div id="left">
						<!--left-->
						<div id="nav">
							<ul>
								<li>
									<a href="#" style="float: left;" onclick="show_headpage()">首页</a>
								</li>
								<li>
									<a href="#" onclick="show_my_share();">我的分享</a>
								</li>
								<li>
									<a href="#" onclick="show_collect_user();">收藏用户</a>
								</li>
								<li>
									<a href="#" onclick="show_collect_share();">收藏分享</a>
								</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-xs-8">
					<center><a style="z-index: 3;width: 100%;opacity: 0.1" href="#" id="bnt_share" onclick="show_comment();" onmouseout="this.style.opacity = 0.1;" onmouseover="this.style.opacity = 1;"
							   class="btn btn-lg light-black button-right"><i class="fa fa-life-ring"></i><span style="color: black;">点击下拉</span></a></center>

					<!--展示内容-->
					<div class="main">
						<div id="comment_content">
						</div>
						<hr />
						<div id="main_content">
							<center><h1>点击首页试试看</h1></center>
						</div>
					</div>
				</div>

				<div class="col-xs-3">
					<p>点赞板</p>
					<ul id="myTab" class="nav nav-tabs">
						<li class="active">
							<a href="#like_now" data-toggle="tab">
								今日
							</a>
						</li>
						<li>
							<a href="#like_week" data-toggle="tab">最近一周</a>
						</li>
						<li>
							<a href="#like_all" data-toggle="tab">全部</a>
						</li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="like_now">
							<p>今天的点赞板</p>
						</div>
						<div class="tab-pane fade" id="like_week">
							<p>最近一周的点赞板</p>
						</div>
						<div class="tab-pane fade" id="like_all">
							<p>全部的点赞板</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			var navigation = responsiveNav("#nav", { // Selector: The ID of the wrapper
				animate: true, // Boolean: 是否启动CSS过渡效果（transitions）， true 或 false
				transition: 400, // Integer: 过渡效果的执行速度，以毫秒（millisecond）为单位
				label: "Menu", // String: Label for the navigation toggle
				insert: "after", // String: Insert the toggle before or after the navigation
				customToggle: "", // Selector: Specify the ID of a custom toggle
				openPos: "relative", // String: Position of the opened nav, relative or static
				jsClass: "js", // String: 'JS enabled' class which is added to <html> el
				debug: false, // Boolean: Log debug messages to console, true 或 false
				init: function() {}, // Function: Init callback
				open: function() {}, // Function: Open callback
				close: function() {} // Function: Close callback
			});
		</script>
	</body>
	<script type="text/javascript">
		$("#file-4").fileinput({
			uploadExtraData: {
				kvId: '10'
			}
		});
		$(document).ready(function() {
			$("#test-upload").fileinput({
				'showPreview': false,
				'allowedFileExtensions': ['jpg', 'png', 'gif'],
				'elErrorContainer': '#errorBlock'
			});
		});
		//initiating jQuery
		jQuery(function($) {
			$(document).ready(function() {
				//enabling stickUp on the '.navbar-wrapper' class
				$('#yyg-nav').stickUp();
			});
		});
	</script>

</html>