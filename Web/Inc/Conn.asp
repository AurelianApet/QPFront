<%

'��Ϸ���ݿ�
Const RLGameIsSql = 1
Dim GameConn
Dim Ver

Ver="6.6.0.3"

Dim QPPlatformDB,QPAccountsDB,QPTreasureDB,QPRecordDB,QPNativeWebDB,QPGameMatchDB
QPPlatformDB="QPPlatformDB"
QPAccountsDB="QPAccountsDB"
QPTreasureDB="QPTreasureDB"
QPRecordDB = "QPRecordDB"
QPNativeWebDB = "QPNativeWebDB"
QPGameMatchDB="QPGameMatchDB"

Sub ConnectGame(lDataBase)
Dim ConnStr
	If RLGameIsSql = 1 Then
		'sql���ݿ����Ӳ��������ݿ������û����롢�û�������������������local�������IP��
		Dim SqlDatabaseName,SqlPassword,SqlUsername,SqlLocalName
		SqlDatabaseName = lDataBase
		SqlPassword = "ximen12365abcD"
		SqlUsername = "sa"
		SqlLocalName = "127.0.0.1"  
		ConnStr = "Provider = Sqloledb; User ID = " & SqlUsername & "; Password = " & SqlPassword & "; Initial Catalog = " & SqlDatabaseName & "; Data Source = " & SqlLocalName & ";"		
	End If
	On Error Resume Next
	Set GameConn = Server.CreateObject("ADODB.Connection")
	GameConn.open ConnStr
	If Err Then		
	    err.Clear
		Set GameConn = Nothing		
		Response.Write "���ݿ����ӳ������������ִ���"
		Response.End
	End If
End Sub

Sub CloseGame()
IF Not IsEmpty(GameConn) Then
    Exit Sub
End IF
If IsObject(GameConn) Then
    IF GameConn.State<>0 Then
	    GameConn.Close
	    Set GameConn = Nothing
	End IF
End If
End Sub

%>