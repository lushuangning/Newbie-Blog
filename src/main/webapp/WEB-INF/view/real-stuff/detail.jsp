<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>文章详情页</title>
	<link rel="stylesheet" type="text/css" href="http://www.syninglu.space/static/framework/bootstrap-3.3.7/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="http://www.syninglu.space/static/css/public/public.css">
	<link rel="stylesheet" type="text/css" href="http://www.syninglu.space/static/css/public/article.css">
	<link rel="icon" href="http://www.syninglu.space/static/img/easyicon.ico" type="image/x-ico" />
</head>
<body>
	<%@ include file="/static/html/public/header.html" %>
	<%@ include file="/static/html/public/main-navigation.html" %>
	<div class="lsn-center">
		<main class="container">
			<div class="row">
				<div class="col-md-12">
					<article class="post format">
						<div class="post-head">
							<div class="post-title">
								<h3 id="lsn-title">${map.title}</h3>
							</div>
							<div class="post-meta">
								<h4>作者：<span id="post-author">${map.author}</span>&nbsp;•&nbsp;<span id="post-date">${map.createTime}</span></h4>
							</div>
						</div>

						<!-- 文章具体内容 -->
						<div class="post-content">
							${map.content}
						</div>
						
						<div class="footer">
						 	<h4>&nbsp;</h4>
							<h4>
								© 2016
								<a href="http://www.syninglu.space">双儿的小窝</a>
								All rights reserved
							</h4>
						</div>
					</article>
				</div>
			</div>
			
		</main>
		<%@ include file="/static/html/public/remark.html" %>
		
	</div>
	<%@ include file="/static/html/public/footer.html" %>

	<script type="text/javascript" src="http://www.syninglu.space/static/framework/jquery/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="http://www.syninglu.space/static/js/front-end/detail.js"></script>
	<script>
		$(".ds-thread").attr("data-thread-key","${map.id}");
		$(".ds-thread").attr("data-title","${map.title}");
		$(".ds-thread").attr("data-url",window.location.href);		
	</script>

</body>
</html>