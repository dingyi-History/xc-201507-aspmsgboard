<%
'注销用户'
Session.Abandon
Response.Charset="GBK"
msg = "注销成功"
Response.Write "<script>alert('"&msg&"');location.href='../../index.asp'</script>"
%>