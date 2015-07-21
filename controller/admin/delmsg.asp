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
msg="留言和评论删除成功"
Else
msg="删除失败"
end If

Call closedb(rs,conn)
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>
