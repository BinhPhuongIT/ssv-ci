# Step1:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Step2:

Invoke-WebRequest -Uri "https://github.com/BinhPhuongIT/ssv-ci/edit/main/run.cmd" -OutFile "rport-installer.ps1"

powershell -ExecutionPolicy Bypass -File .\Install_OpenSSH_Windows.ps1
