<!--#include file="base/html.asp"-->

<!--#include file="base/rlheader.asp"-->

 <form class="am-form" method="post" action="../controller/admin/adminlogin.asp">
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

<!--页脚-->
<!--#include file="base/footer.asp"-->