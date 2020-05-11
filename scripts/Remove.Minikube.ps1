cuninst minikube -y
Get-VM minikube | Stop-VM -Force
Get-VM minikube | Remove-VM -Force

if(Test-Path ~\.minikube){
    Remove-Item ~\.minikube -Force -Recurse
}