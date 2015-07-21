<!--#include file="../../model/connsqlserver.asp"-->
<%
Dim cid,msg

cid = Request("cid")

sql = "DELETE FROM comment WHERE cid="&cid
Call dosql(sql,2)

If ra<>0 Then
msg="评论删除成功"
Else
msg="评论删除失败"
end If 

call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>
