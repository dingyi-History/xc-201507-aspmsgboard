<!--#include file="../../model/connsqlserver.asp"-->
<%
Dim cid,msg

cid = Request("cid")

sql = "DELETE FROM comment WHERE cid="&cid
Call dosql(sql,2)

If ra<>0 Then
msg="����ɾ���ɹ�"
Else
msg="����ɾ��ʧ��"
end If 

call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>
