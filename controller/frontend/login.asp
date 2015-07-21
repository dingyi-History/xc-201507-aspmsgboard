<!--#include file="../../model/connsqlserver.asp"-->
<%
username = Request.form("username")
userpwd = Request.form("userpwd")
Response.Charset="GBK"

If username="" Or userpwd ="" Then
Response.Write "<script>alert('请正确输入！');location.href='../../view/login.asp'</script>"
end if 
sql="use  msgdb SELECT * FROM alluser WHERE uname = '"&username&"' AND upwd = '"&userpwd&"' AND level=0"
Call dosql(sql,1)
if rs.eof Then
Session("username") = username
sql = "select uid from alluser where uname='"&username&"'"
Call dosql(sql,1)
Session("uid") = rs("uid")
msg= "登录成功"
Else
msg= "登录失败"
end if
Call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>