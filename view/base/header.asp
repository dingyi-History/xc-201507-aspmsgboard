<!--#include file="html.asp"-->
<!--#include file="rlheader.asp"-->
		<!--ҳͷ-->
		<div id="header" class="am-g">
			<br />
			<br />
			<div id="hbody" class="am-g am-g-fixed">
				<div class="am-u-md-8">

					<h1>asp���԰�</h1>
					<p>�û�����
					<%
					Response.charset="utf-8"
					If Session("username")<>"" Then
					Response.Write Session("username")
					%>
					<br />�û�ID��<%=Session("uid") %>
					<%
					Else
					Response.Write "��¼������"
					
					end If
					%>
					
					</p>
					
				</div>
				<div class="am-u-md-4">
				
				<%if Session("username")<>"" then %>
				<a href="../../view/mymsg.asp"><button type="button" class="am-btn am-btn-success am-btn-block  am-radius">�ҵ�����</button></a>
					<br />
					<a href="../../controller/frontend/logout.asp"><button type="button" class="am-btn am-btn-danger am-btn-block  am-radius" >ע��</button></a>
				<%
				Else
				%>
					<button type="button" class="am-btn am-btn-primary am-btn-block  am-radius"  data-am-modal="{target: '#reg'}">ע��</button>
					<br />
					<button type="button" class="am-btn am-btn-success am-btn-block  am-radius"   data-am-modal="{target: '#login'}">��¼</button>
				<%end if %>
				
				</div>

			</div>

		</div>