<!--#include file="html.asp"-->
<!--#include file="rlheader.asp"-->
		<!--页头-->
		<div id="header" class="am-g">
			<br />
			<br />
			<div id="hbody" class="am-g am-g-fixed">
				<div class="am-u-md-8">

					<h1>asp留言板</h1>
					<p>用户名：
					<%
					Response.charset="utf-8"
					If Session("username")<>"" Then
					Response.Write Session("username")
					%>
					<br />用户ID：<%=Session("uid") %>
					<%
					Else
					Response.Write "登录后留言"
					
					end If
					%>
					
					</p>
					
				</div>
				<div class="am-u-md-4">
				
				<%if Session("username")<>"" then %>
				<a href="../../view/mymsg.asp"><button type="button" class="am-btn am-btn-success am-btn-block  am-radius">我的留言</button></a>
					<br />
					<a href="../../controller/frontend/logout.asp"><button type="button" class="am-btn am-btn-danger am-btn-block  am-radius" >注销</button></a>
				<%
				Else
				%>
					<button type="button" class="am-btn am-btn-primary am-btn-block  am-radius"  data-am-modal="{target: '#reg'}">注册</button>
					<br />
					<button type="button" class="am-btn am-btn-success am-btn-block  am-radius"   data-am-modal="{target: '#login'}">登录</button>
				<%end if %>
				
				</div>

			</div>

		</div>