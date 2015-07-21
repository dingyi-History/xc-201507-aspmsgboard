<%
'变量声明'
Dim ser,db,username,userpwd,connstr
Dim errnumber,errdes,errsource,errline
dim rs,conn,sql,ra,rs2,sql2

Response.Charset="GBK"
''-----SQL配置信息-----''
'以上填写:服务器IP,如跟空间同IP请填写(local),默认端口1433
ser= "127.0.0.1,1433"
'数据库名称
db = "msgdb"
'数据库名称用户
username = "sa"
'数据库用户密码
userpwd = "000000"

On Error Resume Next
'获取ADO连接对象，打开连接'
set conn = Server.CreateObject("ADODB.connection")
connstr = "provider=sqloledb.1;data source="& ser & ";User ID=" & username & ";pwd=" & userpwd & ";Initial Catalog="& db & ";"	
conn.Open connstr

''-----连接错误判断-----''
if err then
Response.Write Err.Number &"<br />"&Err.Description & "<br / >"& Err.Source & "<br / >"& Err.Line & "<br / >"
end if

'执行sql语句的函数，1为查询，2为增改删
Function dosql(sql, sqli)
Select Case sqli
	case 1   
	Set rs=Server.CreateObject("Adodb.Recordset")
	rs.open sql,conn,1,1
		'set rs = conn.execute(sql)
	case 2 
	conn.Execute sql,ra
End Select	
end Function

'单独的数据库查询，为嵌套查询方便进行区分'
Function dosql2(sql2)
set rs2 = server.createobject("adodb.recordset")
rs2.open sql2,conn,1,1
end Function


'关闭数据库连接 和rs'
Function closedb(rs, conn)
rs.close
set rs = Nothing
conn close
set conn = Nothing
end Function
	%>