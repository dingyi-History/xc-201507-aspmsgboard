<!--#include file="../../model/connsqlserver.asp"-->
<%

Dim mid,ccontent,cuid

cmid = Request("mid")
ccontent = Request.form("ccontent")
cuid = Session("uid")

If cuid="" Then
msg = "�Բ������¼��������ۡ�"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If


If len(ccontent)<5 Then
msg = "�Բ�����������С��5����"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If

sql = "INSERT INTO comment(cuid,cmid,ccontent,ctime) VALUES('"&cuid&"','"&cmid&"','"&ccontent&"',getdate())"

Call dosql(sql,2)

If ra=1 Then
msg="���۳ɹ�"
Else
msg="����ʧ��"
end If

Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>