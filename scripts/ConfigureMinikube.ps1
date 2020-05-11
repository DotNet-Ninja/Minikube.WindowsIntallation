minikube config set vm-driver hyperv 
minikube config set hyperv-virtual-switch "Default Switch" 
minikube config set memory 8192 
minikube config set cpus 8 
minikube config set disk-size 20g 
minikube start

minikube addons enable dashboard
minikube addons enable ingress

kubectl -n kubernetes-dashboard wait --for=condition=ready pods --all --timeout=120s
