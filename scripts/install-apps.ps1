iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install openssh -y --no-progress
choco install rsync -y --no-progress
choco install googlechrome -y --no-progress
choco install notepadplusplus -y --no-progress

# https://docs.microsoft.com/en-us/visualstudio/install/workload-component-id-vs-community?vs-2019&view=vs-2019
# https://docs.microsoft.com/en-us/visualstudio/install/use-command-line-parameters-to-install-visual-studio?view=vs-2019
# https://chocolatey.org/packages/visualstudio2019community
choco install visualstudio2019community -y --no-progress


choco install wixtoolset -y --no-progress
choco install postgresql10 -y --no-progress --params '/Password:postgres'

powershell.exe -ExecutionPolicy Bypass -File 'C:\Program Files\OpenSSH-Win64\install-sshd.ps1'

New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22

mkdir C:\Users\vagrant\.ssh

CREATE FUNCTION add_one(integer) RETURNS integer
     AS 'demo_extension', 'add_one'
     LANGUAGE C STRICT;
