helm repo add istio.io https://storage.googleapis.com/istio-release/releases/1.5.0/charts/
kubectl create namespace istio-system 
helm install istio-init istio.io/istio-init -n istio-system 
kubectl -n istio-system wait --for=condition=complete job --all --timeout=60s
helm install istio istio.io/istio -n istio-system --set tracing.enabled=true --set kiali.createDemoSecret=true --set kiali.enabled=true --set grafana.enabled=true
kubectl -n istio-system wait --for=condition=ready pod -l "istio" --timeout=60s

# minikube dashboard