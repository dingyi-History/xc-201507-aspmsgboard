<!--#include file="../../model/connsqlserver.asp" -->
<%
Dim aname,apwd,msg

aname = Request.form("aname")
apwd = Request.form("apwd")

If len(aname)<5 Or len(apwd)<5 Then
msg="�Բ����㲻�ǹ���Ա"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If

sql = "SELECT * FROM alluser WHERE uname='"&aname&"' AND 'upwd= '"&apwd&"' AND level=1"
Call dosql(sql,1)

If rs.eof Then
Session("username")="����Ա"
sql = "select uid from alluser where uname='"&aname&"'"
Call dosql(sql,1)
Session("uid")=rs("uid")
Session("admin")=1
msg="��ӭ��������Ա"
Else
msg="�Բ����㲻�ǹ���Ա��"
end If 
call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>