<!--#include file="../../model/connsqlserver.asp"-->
<%
Response.Charset="GBK"

Dim msg
username = Request.form("username")
userpwd1 = Request.form("userpwd1")
userpwd2 = Request.form("userpwd2")

If username="" or len(username)<3 Then
msg="用户名太短error"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If

if userpwd1<>userpwd2 Then
msg="密码不一致error"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end if

if len(userpwd1)<3 or len(userpwd2)<3 Then
msg="密码长度不得少于三位error"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end if


'用户名重复判断'
'sql = "SELECT * FROM alluser where uname='"&username&"'"
'Call dosql(sql,1)
'If  rs.bof And rs.eof Then
'msg="用户名重复error"
'Call closedb(rs,conn)
'Response.Write "<script>alert('"&msg&"');location.href='../view/reg.asp'</script>"
'Response.end
'end If'


'进行注册'
sql ="INSERT INTO alluser(uname,upwd) VALUES('"&username&"','"&userpwd2&"')"
Call dosql(sql,2)
If ra=1 Then 
msg ="注册成功"
Else
msg="注册失败"
end If
Call closedb(rs,conn)

'注册后自动登录'
Session("username") = username


Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>