<!--#include file="../../model/connsqlserver.asp"-->
<%
Response.Charset="GBK"

Dim msg
username = Request.form("username")
userpwd1 = Request.form("userpwd1")
userpwd2 = Request.form("userpwd2")

If username="" or len(username)<3 Then
msg="�û���̫��error"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If

if userpwd1<>userpwd2 Then
msg="���벻һ��error"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end if

if len(userpwd1)<3 or len(userpwd2)<3 Then
msg="���볤�Ȳ���������λerror"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end if


'�û����ظ��ж�'
'sql = "SELECT * FROM alluser where uname='"&username&"'"
'Call dosql(sql,1)
'If  rs.bof And rs.eof Then
'msg="�û����ظ�error"
'Call closedb(rs,conn)
'Response.Write "<script>alert('"&msg&"');location.href='../view/reg.asp'</script>"
'Response.end
'end If'


'����ע��'
sql ="INSERT INTO alluser(uname,upwd) VALUES('"&username&"','"&userpwd2&"')"
Call dosql(sql,2)
If ra=1 Then 
msg ="ע��ɹ�"
Else
msg="ע��ʧ��"
end If
Call closedb(rs,conn)

'ע����Զ���¼'
Session("username") = username


Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>