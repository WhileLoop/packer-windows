Start-Process -FilePath "E:\cert\VBoxCertUtil.exe" -ArgumentList "add-trusted-publisher", "E:\cert\vbox-sha1.cer"
Start-Process -FilePath "E:\cert\VBoxCertUtil.exe" -ArgumentList "add-trusted-publisher", "E:\cert\vbox-sha256.cer"
Start-Process -FilePath "E:\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait
