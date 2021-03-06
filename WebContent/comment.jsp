<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JQuery - Ajax - Comment</title>
		<link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" />
		<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-2.1.1.min.js" ></script>
	</head>
	<body>
		<div class="wrapper-cmt">
			<div class="cmt-post">
				<div class="detail">
					<h1>Cần gấu đi chơi Trung Thu...</h1>
					<p>- Chiều cao: Trên 1m60</p>
					<p>- Sản xuất năm 199x ^^</p>
					<p>- Nhiệt độ 37 độ C</p>
					<p>- Có khả năng tự động ôm chủ mỗi khi chủ lạnh :D</p>
					<p>- Luôn bên cạnh quan tâm những lúc chủ vui hay buồn</p>
					<p>- Tuyệt đối không đi chơi với gấu khác (^^) </p>
				</div>
				<form class="form-cmt">
					<div class="form-item">
						<input type="text" name="fullname" id="fullname" value="" placeholder="Nhập tên" required="required" />
					</div>
					<div class="form-item">
						<input type="text" name="cmt" id="cmt" value="" placeholder="Nhập bình luận" required="required" />
						<a href="javascript:void(0)" title="" class="btn" onclick="return doComment()">Bình luận</a>
						<!-- javascript:void(0) để không load lại trang nhé.  -->
					</div>
				</form>
			</div>
			<div class="ajax-data">
				<div class="item-cmt">
					<p class="name-cmt">VinaEnter</p>
					<p class="content-cmt">Có anh ở đây rồi</p>
					<p class="time-cmt">10PM 29/09/2015</p>
				</div>
			</div>
			<script type="text/javascript">
				function doComment(){
					var fullname = $("#fullname").val();
					var comment = $("#cmt").val();
					$.ajax({
						url: '<%=request.getContextPath()%>/ajax',
						type: 'POST', 
						cache: false,
						data: {
							afullname:fullname,
							acmt:comment,
						},
						success: function(data){
							$(".ajax-data").html(data);
						},
						error: function (data){
							alert("Có lỗi trong quá trình xử lý!")
						}
					});	
				}
			</script>
		</div>
	</body>
</html>