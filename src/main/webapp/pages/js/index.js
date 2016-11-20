var toggleShowComment = false
function show_comment(){
	var temp = $("#comment_content").val();
	var bnt_temp = "";
	if(!toggleShowComment){
		temp =  "<form id='form_addr' style='margin-top: 3em' enctype='multipart/form-data'>" +
				"			<div class='form-group'>" +
				"				<input id='file-4' type='file' class='file' data-upload-url='#'>" +
				"				<button class='btn btn-primary'>上传</button>" +
				"				<button class='btn btn-default' type='reset'>重置</button>" +
				"			</div>" +
				"		</form>";
		bnt_temp = "<i class='fa fa-life-ring'></i><span style='color: black;'>点击收回</span>";
		toggleShowComment = true
	}else{
		temp = "";
		bnt_temp = "<i class='fa fa-life-ring'></i><span style='color: black;'>点击下拉</span>";
		toggleShowComment = false
	}

	$("#comment_content").html(temp);
	$("#bnt_share").html(bnt_temp);
}

function show_headpage(){
	var temp =  "<div class='thumbnail'>" +
				"	<img src='img/pic00.jpg' alt='...'>" +
				"	<img src='img/pic01.jpg' alt='...'>" +
				"	<div class='caption'>" +
				"		<h3>娱乐圈扒姐</h3>" +
				"		<p>杨幂回应刘恺威出轨事件后，其本人也发微博回应，但看到这个视频，刘恺威打脸次数还真多，什么事都让老婆站在前面背锅可不是大丈夫所为</p>" +
				"		<p>" +
				"			<a href='#' class='btn btn-primary' role='button'>分享</a>" +
				"			<a href='#' class='btn btn-primary' role='button'>评论</a>" +
				"			<a href='#' class='btn btn-default' role='button'>点赞</a>" +
				"		</p>" +
				"	</div>" +
				"</div>";
	$("#main_content").html(temp);
}
function show_my_share(){
	var temp = "<center><h1>你还未分享任何图片...快去分享吧</h1></center>"
	$("#main_content").html(temp);
}
function show_collect_user(){
	var temp = "<center><h1>你还未收藏任何用户...快去收藏吧</h1></center>"
	$("#main_content").html(temp);
}
function show_collect_share(){
	var temp = "<center><h1>你还收藏任何分享...快去收藏吧</h1></center>"
	$("#main_content").html(temp);
}
