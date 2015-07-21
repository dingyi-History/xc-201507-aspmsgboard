<!--#include file="../../model/connsqlserver.asp"-->

<% sql="SELECT * FROM msg INNER JOIN alluser ON msg.uid=alluser.uid order by mid desc " 
call dosql(sql,1) 

rs.pagesize=5
curpage=Request.QueryString("curpage")
if curpage="" then curpage=1
rs.absolutepage=curpage

for i= 1 to rs.pagesize
if rs.eof then
exit for
end if

%>

	<br />
	<div class="am-g am-g-fixed">
		<div class="am-u-md-10 am-u-sm-centered">
			<article class="am-comment">
				<a href="#" style="float: left;">
				<%if rs("level")=1 Then%>
				<h3 style="color: red;">管理员</h3>
				<%else%>
					<h3><%=rs("uname")%></h3>
					<%end if %>
				</a>
				<%if Session("admin")<>"" Then%>
				 <a style="float: right; color: red;" href="../../controller/admin/delmsg.asp?mid=<%=rs("mid")%>">删除</a>
				 <%end if%>
<hr />
				<div class="am-comment-main">
					<header class="am-comment-hd" style="line-height: 100%;">
						<h3 class="am-comment-title" style="line-height: 100%;margin: 10px;"><%=rs("mtitle")%></h3>
						<div class="am-comment-meta am-text-right">

							留言于
							<time>
								<%=rs( "mtime")%>
							</time>
						</div>
					</header>

					<div class="am-comment-bd" style="padding: 20px;">
						<p style="margin-left: 20px;"><%=rs( "mcontent")%></p>
					</div>
					<hr />
					<div>
						<% sql2="select * from comment INNER JOIN alluser ON comment.cuid=alluser.uid where cmid=" &rs("mid")& " order by cid desc" 
						call dosql2(sql2) 
						do while not rs2.eof %>

							<div class="am-g">
								<div class="am-u-sm-2 am-u-sm-offset-1">
									
									<% if rs2("level")=1 then %>
									<h3 style="font-size: 0.8em;color: red;">管理员</h3>
									<%Else %>
									<h3 style="font-size: 0.8em;">
									<%=rs2("uname")%>
									</h3>
									<%end if %>
									
									
								</div>
								<div class="am-u-sm-9" style=" text-align: left;">
									<p style="font-size: 0.8em; color:#009CDA;">
										<%=rs2( "ccontent")%>
							
															<%if Session("admin")<>"" Then%>
				 <a style="float: right; color: brown;margin-right: 5%;" href="../../controller/admin/delcomment.asp?cid=<%=rs2("cid")%>">删除</a>
				 <%end if%>
										<small  style="float: right;margin-right: 10%;font-size: 14px;"><%=rs2("ctime")%></small>
					
										
									</p>

								</div>
							</div>
							<% rs2.movenext 
							Loop %>
					
								<div class="am-g">
									<form  method="post" action="../../controller/frontend/addcomment.asp?mid=<%=rs("mid")%>">
										<div class="am-u-sm-8 am-u-sm-offset-1">
											<div class="am-form-group">
												<input type="text" name="ccontent" placeholder="添加评论(请大于5个字)" required style="width: 100%;height:2em;line-height: 1em;">
											</div>
										</div>
										<div class="am-u-sm-3">
											<input type="submit" class="am-btn am-btn-primary am-radius" value="回复" style="line-height: 1em;" />
										</div>
									</form>
								</div>

					</div>
					<br />
				</div>
			</article>
		</div>

	</div>
	<% 
	rs.movenext
	next
	%>
		<div>
			
			<ul class="am-pagination am-pagination-centered">

<%if curpage=1 then%>
<li class="am-disabled am-active">首页</li>
<%else%>
<li ><a href="?curpage=1">首页</a></li>
<%end if%>

<%if curpage=1 then%>
<li class="am-disabled"><a href="#">&laquo;</a></li>
<%else%>
<li><a href="?curpage=<%=curpage-1%>">&laquo;</a></li>
<%end if%>


<% for a=1 to rs.pagecount%>
<li><a href="?curpage=<%=a%>"><%=a%></a></li>
<%
i=i+1
next
%>

<%if rs.pagecount<curpage+1 then%>
<li class="am-disabled"><a href="#">&raquo;</a></li>
<%else%>
<li><a href="?curpage=<%=curpage+1%>">&raquo;</a></li>
<%end if%>

<%if rs.pagecount<curpage+1 then%>
<li class="am-disabled am-active"><a href="#">尾页</a></li>
<%else%>
<li><a href="?curpage=<%=rs.pagecount%>">尾页</a></li>
<%end if%>
<p>共<%=rs.pagecount%>页，<%=rs.recordcount%>条记录</p>
</ul>
			
	<% 	call closedb(rs,conn) %>		
		</div>