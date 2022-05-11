Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=15uRPvqTycqAiHo1zj933S6V0uS3M8YtZ&export=download&confirm=t" -OutFile "ssh-installer.ps1"
Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=1e1fz1KToirw9qdvOmNoXrG7WBM3GFkga&export=download&confirm=t" -OutFile "winrm-installer.ps1"
powershell -ExecutionPolicy Bypass -File .\ssh-installer.ps1
powershell -ExecutionPolicy Bypass -File .\winrm-installer.ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install -y neovim
del .\ssh-installer.ps1 
del .\winrm-installer.ps1 
del .\rport-installer.ps1
Restart-Service rport


===========
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/BinhPhuongIT/ssv-ci/main/Install_OpenSSH_Windows.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/BinhPhuongIT/ssv-ci/main/WinRM.ps1'))
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco install -y neovim
Restart-Service rport
exit
