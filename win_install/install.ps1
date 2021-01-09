.\vs_buildtools.exe --add Microsoft.VisualStudio.Workload.VCTools --includeRecommended --includeOptional --passive
.\Git-2.30.0-64-bit.exe /silent
setx PATH "$($env:path);C:\Program Files\Git\usr\bin"
.\rustup-init.exe --profile complete -v -y 
Expand-Archive -LiteralPath SysinternalsSuite.zip -DestinationPath $env:USERPROFILE\bin\sysinternals
setx PATH "$($env:path);$($env:USERPROFILE)\bin\sysinternals"
Expand-Archive -LiteralPath "Sublime Text Build 3211 x64.zip" -DestinationPath $env:USERPROFILE\bin\sublime_text
$s = $(New-Object -comObject WScript.Shell).CreateShortcut("$env:USERPROFILE\Desktop\sublime.lnk")
$s.TargetPath = "$env:USERPROFILE\bin\sublime_text\sublime_text.exe"
$s.Save()
$key = "S2V5IFN1YmxpbWUgVGV4dCAzLjIuMQotLS0tLSBCRUdJTiBMSUNFTlNFIC0tLS0tCk1lbWJlciBKMlRlYU0KU2luZ2xlIFVzZXIgTGljZW5zZQpFQTdFLTEwMTEzMTYKRDdEQTM1MEUgMUI4QjA3NjAgOTcyRjhCNjAgRjNFNjQwMzYKQjlCNEUyMzQgRjM1NkYzOEYgMEFEMUUzQjcgMEU5QzVGQUQKRkEwQTJBQkUgMjVGNjVCRDggRDUxNDU4RTUgMzkyM0NFODAKODc0Mjg0MjggNzkwNzlBMDEgQUE2OUYzMTkgQTFBRjI5QTQKQTY4NEMyREMgMEIxNTgzRDQgMTlDQkQyOTAgMjE3NjE4Q0QKNTY1M0UwQTAgQkFDRTM5NDggQkIyRUU0NUUgNDIyRDJDODcKREQ5QUY0NEIgOTlDNDk1OTAgRDJEQkRFRTEgNzU4NjBGRDIKOEM4QkIyQUQgQjJFQ0U1QTQgRUZDMDhBRjIgMjVBOUI4NjQKLS0tLS0tIEVORCBMSUNFTlNFIC0tLS0tLQo="
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($key))