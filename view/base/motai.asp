<!--��¼ģ̬��-->
<div class="am-modal am-modal-alert" tabindex="-1" id="login">
	<div class="am-modal-dialog" style="background: none;">
		<div class="am-modal-bd" style="border: none;">
			<form class="am-form" method="post" action="../../controller/frontend/userlogin.asp">

				<div class="am-g">
					<div class="am-u-md-8 am-u-sm-centered" id="kuang">
						<hr />
						<fieldset class="am-form-set">
							<h2 style="color: white;">��¼</h2>
							<input type="text" placeholder="�û���" name="username" required id="uname">
							<input type="password" placeholder="����" name="userpwd" id="pwd">
						</fieldset>
						<button type="submit" class="am-btn am-btn-success am-btn-block" onclick="return logincheck();">GO</button>
						<p id="logintxt" style="color:white;font-size: 14px;">��ӭ������</p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>

<!--ע��ģ̬��-->
<div class="am-modal am-modal-alert" tabindex="-1" id="reg" style="background: none;">
	<div class="am-modal-dialog" style="background: none;">
		<div class="am-modal-bd" style="border: none;">
			<form class="am-form" method="post" action="../../controller/frontend/reg.asp">
				<div class="am-g">
					<div class="am-u-md-8 am-u-sm-centered" id="reg">
						<hr/>

						<fieldset class="am-form-set">
							<h2>ע��</h2>
							<input type="text" placeholder="�û���" name="username" required id="uname" onkeypress="checkname(this.value)" onfocus="checkname(this.value)" onchange="checkname(this.value)">
							<input type="password" placeholder="����" name="userpwd1" id="pwd1" required onkeypress="checkpwd(this.value,1)" onchange="checkpwd(this.value,1)">
							<input type="password" placeholder="ȷ������" name="userpwd2" id="pwd2" required onkeypress="checkpwd(this.value,2)" onchange="checkpwd(this.value,2)">
						</fieldset>
						<button type="submit" class="am-btn am-btn-primary am-btn-block" onclick="return check();">GO</button>
						<p id="txtHint" style="color:#00BFFF;font-size: 14px;">����һ��д��лл��</p>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>