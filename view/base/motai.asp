



<div class="am-modal am-modal-alert" tabindex="-1" id="login" >
  <div class="am-modal-dialog" style="background: none;">
    <div class="am-modal-bd" style="border: none;">
     <form class="am-form" method="post" action="../../controller/frontend/login.asp">
			
				<div class="am-g">
					<div class="am-u-md-8 am-u-sm-centered" id="kuang">
				<hr />
						<fieldset class="am-form-set">
						<h2 style="color: white;">登录</h2>
							<input type="text" placeholder="用户名" name="username" required>
							<input type="password" placeholder="密码" name="userpwd">
						</fieldset>
						<button type="submit" class="am-btn am-btn-success am-btn-block">GO</button>
						<br />
					</div>
				</div>
			</form>
    </div>
  </div>
</div>


<div class="am-modal am-modal-alert" tabindex="-1" id="reg"  style="background: none;">
  <div class="am-modal-dialog" style="background: none;">
    <div class="am-modal-bd" style="border: none;">
     <form class="am-form" method="post" action="../../controller/frontend/reg.asp" >
	<div class="am-g" >
		<div class="am-u-md-8 am-u-sm-centered" id="reg" >
			<hr/>

			<fieldset class="am-form-set">
				<h2>注册</h2>
				<input type="text" placeholder="用户名" name="username" required>
				<input type="password" placeholder="密码" name="userpwd1" required>
				<input type="password" placeholder="确认密码" name="userpwd2" required>
			</fieldset>
			<button type="submit" class="am-btn am-btn-primary am-btn-block" onclick="return check();">GO</button>
			<br />
		</div>
	</div>
</form>
    </div>
  </div>
</div>