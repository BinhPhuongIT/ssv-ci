# Step1:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Step2:
Invoke-WebRequest -Uri "https://github.com/BinhPhuongIT/ssv-ci/edit/main/Install_OpenSSH_Windows.ps1" -OutFile "ssh-installer.ps1"
Invoke-WebRequest -Uri "https://github.com/BinhPhuongIT/ssv-ci/edit/main/InstallChoco.ps1" -OutFile "choco-installer.ps1"
Invoke-WebRequest -Uri "https://github.com/BinhPhuongIT/ssv-ci/edit/main/WinRM.ps1" -OutFile "winrm-installer.ps1"

# Step3:
powershell -ExecutionPolicy Bypass -File .\Install_OpenSSH_Windows.ps1
