<!--#include file="../../model/connsqlserver.asp"-->
<%
Response.Charset="GBK"
Dim mcontent,mtitle,msg
mtitle = Request.form("mtitle")
mcontent = Request.form("mcontent")

uid = Session("uid")

If Session("username")="" Then
msg="�Բ������¼������error"
Response.Write "<script>alert('"&msg&"');location.href='../../view/login.asp'</script>"
Response.end
end if

sql = "INSERT INTO msg(mtitle,mcontent,uid,mtime) VALUES('"&mtitle&"','"&mcontent&"','"&uid&"',getdate())"
Call dosql(sql,2)
If ra=1 Then
msg = "���Գɹ�"
Else
msg = "����ʧ��"
End if
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>