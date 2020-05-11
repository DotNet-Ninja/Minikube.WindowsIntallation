# Note: You need chocolatey installed to successfully run this script!
# If you do not have chocolatey you can get it from: https://www.chocolatey.org, or by using the script below
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
# You will also need Hyper-V installed: 
# Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# cinst minikube --version=1.7.3  -y
# cinst minikube --version=1.8.1  -y
# cinst minikube --version=1.8.2  -y # Broken Memory Sizing issue.
cinst minikube -y
cinst kubernetes-helm -y