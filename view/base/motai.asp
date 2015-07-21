<!--登录模态框-->
<div class="am-modal am-modal-alert" tabindex="-1" id="login">
	<div class="am-modal-dialog" style="background: none;">
		<div class="am-modal-bd" style="border: none;">
			<form class="am-form" method="post" action="../../controller/frontend/userlogin.asp">

				<div class="am-g">
					<div class="am-u-md-8 am-u-sm-centered" id="kuang">
						<hr />
						<fieldset class="am-form-set">
							<h2 style="color: white;">登录</h2>
							<input type="text" placeholder="用户名" name="username" required id="uname">
							<input type="password" placeholder="密码" name="userpwd" id="pwd">
						</fieldset>
						<button type="submit" class="am-btn am-btn-success am-btn-block" onclick="return logincheck();">GO</button>
						<p id="logintxt" style="color:white;font-size: 14px;">欢迎归来。</p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!--注册模态框-->
<div class="am-modal am-modal-alert" tabindex="-1" id="reg" style="background: none;">
	<div class="am-modal-dialog" style="background: none;">
		<div class="am-modal-bd" style="border: none;">
			<form class="am-form" method="post" action="../../controller/frontend/reg.asp">
				<div class="am-g">
					<div class="am-u-md-8 am-u-sm-centered" id="reg">
						<hr/>

						<fieldset class="am-form-set">
							<h2>注册</h2>
							<input type="text" placeholder="用户名" name="username" required id="uname" onkeypress="checkname(this.value)" onfocus="checkname(this.value)" onchange="checkname(this.value)">
							<input type="password" placeholder="密码" name="userpwd1" id="pwd1" required onkeypress="checkpwd(this.value,1)" onchange="checkpwd(this.value,1)">
							<input type="password" placeholder="确认密码" name="userpwd2" id="pwd2" required onkeypress="checkpwd(this.value,2)" onchange="checkpwd(this.value,2)">
						</fieldset>
						<button type="submit" class="am-btn am-btn-primary am-btn-block" onclick="return check();">GO</button>
						<p id="txtHint" style="color:#00BFFF;font-size: 14px;">请逐一填写，谢谢！</p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>