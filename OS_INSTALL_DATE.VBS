For Each i in GetObject("winmgmts:{impersonationLevel=impersonate}")._
  ExecQuery("Select CurrentTimeZone, InstallDate From Win32_OperatingSystem")
  With CreateObject("WbemScripting.SWbemDateTime")
    .Value = i.InstallDate
    MsgBox "OS Installed: " & DateAdd("n", -i.CurrentTimeZone, .GetVarDate)
  End With
Next