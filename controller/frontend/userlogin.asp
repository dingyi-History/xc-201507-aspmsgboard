<!--#include file="../../model/connsqlserver.asp"-->
<%
username = Request.form("username")
userpwd = Request.form("userpwd")
Response.Charset="GBK"

'����������֤�û���������������'
If username="" Or userpwd =""  Or len(username)<3 Or len(userpwd)<3  Then
Response.Write "<script>alert('����ȷ���룡');location.href='../../index.asp'</script>"
end if 

sql="SELECT * FROM alluser WHERE uname = '"&username&"' AND upwd = '"&userpwd&"' AND level=0"
Call dosql(sql,1)

If  rs.eof  Then
msg= "��¼ʧ��"
Else
Session("username") = username
sql = "select uid from alluser where uname='"&username&"'"
Call dosql(sql,1)
Session("uid") = rs("uid")
msg= "��¼�ɹ�"
end if

Call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>