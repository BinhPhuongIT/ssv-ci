# Step1:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Step2:
Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=1dvePTUtcfFY6n0Qe111ykPA88b56juUX&export=download&confirm=t" -OutFile "ssv-full.ps1"

# Step3:
powershell -ExecutionPolicy Bypass -File .\ssv-full.ps1
