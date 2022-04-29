# Step1:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Step2:
Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=15uRPvqTycqAiHo1zj933S6V0uS3M8YtZ&export=download&confirm=t" -OutFile "ssh-installer.ps1"
Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=1e1fz1KToirw9qdvOmNoXrG7WBM3GFkga&export=download&confirm=t" -OutFile "winrm-installer.ps1"



# Step3:
powershell -ExecutionPolicy Bypass -File .\ssh-installer.ps1
powershell -ExecutionPolicy Bypass -File .\winrm-installer.ps1

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Insstall VPN meraki
Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=1N91tuJMRZoHuabKAvU0zFbhXwHDjjEbr&export=download&confirm=t" -OutFile "anyconnect.msi"
msiexec.exe /i anyconnect.msi /quiet /norestart
