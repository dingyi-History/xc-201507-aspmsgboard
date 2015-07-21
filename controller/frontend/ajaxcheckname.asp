<!--#include file="../../model/connsqlserver.asp"-->
<%
response.expires=-1
sql="SELECT * FROM alluser WHERE uname="
sql=sql & "'" & request.querystring("u") & "'"

Call dosql(sql,1)
if not rs.eof then
response.Write(1)
end if 

Call close(rs,conn)

%>