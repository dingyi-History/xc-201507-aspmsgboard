<%
'��������'
Dim ser,db,username,userpwd,connstr
Dim errnumber,errdes,errsource,errline
dim rs,conn,sql,ra,rs2,sql2

Response.Charset="GBK"
''-----SQL������Ϣ-----''
'������д:������IP,����ռ�ͬIP����д(local),Ĭ�϶˿�1433
ser= "127.0.0.1,1433"
'���ݿ�����
db = "msgdb"
'���ݿ������û�
username = "sa"
'���ݿ��û�����
userpwd = "000000"

On Error Resume Next
'��ȡADO���Ӷ��󣬴�����'
set conn = Server.CreateObject("ADODB.connection")
connstr = "provider=sqloledb.1;data source="& ser & ";User ID=" & username & ";pwd=" & userpwd & ";Initial Catalog="& db & ";"	
conn.Open connstr

''-----���Ӵ����ж�-----''
if err then
Response.Write Err.Number &"<br />"&Err.Description & "<br / >"& Err.Source & "<br / >"& Err.Line & "<br / >"
end if

'ִ��sql���ĺ�����1Ϊ��ѯ��2Ϊ����ɾ
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

'���������ݿ��ѯ��ΪǶ�ײ�ѯ�����������'
Function dosql2(sql2)
set rs2 = server.createobject("adodb.recordset")
rs2.open sql2,conn,1,1
end Function


'�ر����ݿ����� ��rs'
Function closedb(rs, conn)
rs.close
set rs = Nothing
conn close
set conn = Nothing
end Function
	%>