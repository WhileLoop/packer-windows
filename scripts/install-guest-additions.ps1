E:\cert\VBoxCertUtil.exe add-trusted-publisher E:\cert\vbox-sha1.cer
E:\cert\VBoxCertUtil.exe add-trusted-publisher E:\cert\vbox-sha256.cer
Start-Process -FilePath "E:\VBoxWindowsAdditions.exe" -ArgumentList "/S" -Wait
