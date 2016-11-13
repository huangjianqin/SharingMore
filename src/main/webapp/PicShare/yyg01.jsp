<!DOCTYPE html>
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
		<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/stickUp.min.js"></script>
		<script type="text/javascript" src="js/responsive-nav.min.js"></script>
		<script type="text/javascript" src="js/flat-ui.min.js"></script>
		<script type="text/javascript" src="js/zepto.min.js"></script>
		<script type="text/javascript" src="js/iscroll-zoom.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		
		<meta charset="UTF-8">
		<meta name="apple-mobile-web-app-capable" content="yes">	
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<script type="text/javascript">
		if(/Android (\d+\.\d+)/.test(navigator.userAgent)){
			var version = parseFloat(RegExp.$1);
			if(version>2.3){
				var phoneScale = parseInt(window.screen.width)/640;
				document.write('<meta name="viewport" content="width=640, minimum-scale = '+ phoneScale +', maximum-scale = '+ phoneScale +', target-densitydpi=device-dpi">');
			}else{
				document.write('<meta name="viewport" content="width=640, target-densitydpi=device-dpi">');
			}
		}else{
			document.write('<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">');
		}
		</script>
	
	
	</head>

	<body style="background-color: #444;">
		<div class="container">
			<div class="row" id="yyg-nav">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
							<a class="navbar-brand" href="#">Brand</a>

						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active">
									<a href="#">Link</a>
								</li>
								<li>
									<a href="#">Link</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
								</li>
							</ul>
							<form class="navbar-form navbar-left" role="search">
								<div class="form-group">
									<input type="text" class="form-control" placeholder="Search">
								</div>
								<button type="submit" class="btn btn-default">Submit</button>
							</form>
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="#">Link</a>
								</li>
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
								</li>
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>

			</div>

			<div class="row">
				<div class="col-xs-9">
					<!--left-->
					<div id="nav">
						<ul>
							<li>
								<a href="#">首页</a>
							</li>
							<li>
								<a href="#">我的分享</a>
							</li>
							<li>
								<a href="#">收藏用户</a>
							</li>
							<li>
								<a href="#">收藏分享</a>
							</li>
						</ul>
					</div>
					<!--展示内容-->
					<div class="main">
						 
						 
						 <div class="row">
							 <div class="col-sm-6 col-md-12">
							    <div class="thumbnail">
								    <img src="img/pic00.jpg" alt="...">
								    <img src="img/pic01.jpg" alt="...">
								    <div class="caption">
								    <h3>娱乐圈扒姐</h3>
								    <p>杨幂回应刘恺威出轨事件后，其本人也发微博回应，但看到这个视频，刘恺威打脸次数还真多，什么事都让老婆站在前面背锅可不是大丈夫所为</p>
								    <p><a href="#" class="btn btn-primary" role="button">分享</a>
								    <a href="#" class="btn btn-primary" role="button">评论</a>
								    <a href="#" class="btn btn-default" role="button">点赞</a></p>
								    </div>
							    </div>
							 </div>
						</div>

						 
						<form name="form" action="" method="POST" enctype="multipart/form-data">
							<div class="wrap">
								<div class="album-old">
									<div class="upload-btn btn-old"><input type="file" name="" id=""></div>
									<div class="upload-img "></div>	
								</div>
								
								<div class="bg"></div>
								<div class="textarea">
									<textarea placeholder="发射弹幕"></textarea>
								</div>
								<div class="submit"></div>
							</div>
						</form>
						
						
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
		//initiating jQuery
		jQuery(function($) {
			$(document).ready(function() {
				//enabling stickUp on the '.navbar-wrapper' class
				$('#yyg-nav').stickUp();
			});
		});
	</script>

</html>