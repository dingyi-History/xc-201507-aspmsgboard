<!--#include file="base/html.asp"-->

<div id="rlheader" class="am-topbar am-topbar-inverse" style="margin: 0;z-index: 999;" data-am-sticky="{animation: 'slide-top'}">
	<div class="am-g am-g-fixed">
		<h1 class="am-topbar-brand">
    <a href="#">留言板</a>
  </h1>

		<div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
			<ul class="am-nav am-nav-pills am-topbar-nav">
				<li><a href="../../index.asp">首页</a></li>
			</ul>

		</div>
	</div>
</div>



<div id="bg" style="background: url(../public/assets/img/1.jpg);position: fixed;bottom:0;top:0;left: 0;right: 0;">
 <br /><br /><br /><br />
 
 <form class="am-form" method="post" action="../controller/admin/adminlogin.asp"  data-am-scrollspy="{animation: 'fade', delay: 300}">
			<br /><br /><br />
				<div class="am-g">
					<div class="am-u-md-4 am-u-sm-centered" id="kuang">
				<hr />
						<fieldset class="am-form-set">
						<h2 style="color: white;">管理员登录</h2>
							<input type="text" placeholder="用户名" name="aname" required>
							<input type="password" placeholder="密码" name="apwd">
						</fieldset>
						<button type="submit" class="am-btn am-btn-success am-btn-block">管理</button>
						<br />
					</div>
				</div>
			</form>
			
			
		
</div>
<!--页脚-->
<!--#include file="base/footer.asp"-->