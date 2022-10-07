Dim objCDO, objMessage, objAtt, strPath, strAttPath, myReg
Set myReg=WScript.CreateObject("WScript.Shell")
strPath = myReg.CurrentDirectory & "\"
strAttPath = strPath
Set objCDO = CreateObject("CDO.DropDirectory")
    For Each objMessage In objCDO.GetMessages(strPath)
        For Each objAtt In objMessage.Attachments
            objAtt.SaveToFile strAttPath & objAtt.Filename
        Next
    Next
Set objCDO = Nothing
Set objMessage = Nothing
Set objAtt = Nothing
Set myReg= nothing
Msgbox "Ok, 附件存放在 " & strPath