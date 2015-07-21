<!--#include file="../../model/connsqlserver.asp"-->
<%

Dim mid,ccontent,cuid

cmid = Request("mid")
ccontent = Request.form("ccontent")
cuid = Session("uid")

If cuid="" Then
msg = "对不起，请登录后进行评论。"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If


If len(ccontent)<5 Then
msg = "对不起，评论内容小于5个字"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
Response.end
end If

sql = "INSERT INTO comment(cuid,cmid,ccontent,ctime) VALUES('"&cuid&"','"&cmid&"','"&ccontent&"',getdate())"

Call dosql(sql,2)

If ra=1 Then
msg="评论成功"
Else
msg="评论失败"
end If

Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"

%>