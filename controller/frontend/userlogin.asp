<!--#include file="../../model/connsqlserver.asp"-->
<%
username = Request.form("username")
userpwd = Request.form("userpwd")
Response.Charset="GBK"

'服务器端验证用户名和密码错误情况'
If username="" Or userpwd =""  Or len(username)<3 Or len(userpwd)<3  Then
Response.Write "<script>alert('请正确输入！');location.href='../../index.asp'</script>"
end if 

sql="SELECT * FROM alluser WHERE uname = '"&username&"' AND upwd = '"&userpwd&"' AND level=0"
Call dosql(sql,1)

If  rs.eof  Then
msg= "登录失败"
Else
Session("username") = username
sql = "select uid from alluser where uname='"&username&"'"
Call dosql(sql,1)
Session("uid") = rs("uid")
msg= "登录成功"
end if

Call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>