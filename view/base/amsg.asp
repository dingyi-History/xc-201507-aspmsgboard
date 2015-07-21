	<!--添加留言-->
		<div id="msg" class="am-g">
			<br />
			<br />
			<div id="addmsgbody" class="am-g am-g-fixed">

				<div class="am-u-sm-10 am-u-sm-centered">
					<form action="../../controller/frontend/addmsg.asp" method="post">
						<div class="am-form-group">
							<input  type="text" name="mtitle" placeholder="写上标题" required/><br />
							<textarea id="msgcontent" rows="3" cols="82"  placeholder="在这留言吧" name="mcontent" required></textarea>
						</div>
						<div class="am-u-sm-4 am-u-sm-centered">
							<button type="submit" class="am-btn am-btn-success am-btn-block am-radius">留言</button>
						</div>
					</form>

				</div>

			</div>

		</div>