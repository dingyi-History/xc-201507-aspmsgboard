<!--#include file="../../model/connsqlserver.asp"-->
<%
Dim mid,msg

mid = Request("mid")

sql ="delete from comment where cmid="&mid
Call dosql(sql,2)

ra=0

sql="delete from msg where mid="&mid

Call dosql(sql,2)

If ra<>0 Then
msg="���Ժ�����ɾ���ɹ�"
Else
msg="ɾ��ʧ��"
end If

Call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>
