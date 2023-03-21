# Repository for Training Kubernetes Essentials

## API URL

```bash
kubectl cluster-info | grep 'Kubernetes master' | awk '/http/ {print $NF}'
```

## CA certificate

```bash
kubectl get secrets
kubectl get secret <secret name> -o jsonpath="{['data']['ca\.crt']}" | base64 --decode
```

## Token

Create file __gitlab-admin-service-account.yaml__:

```yaml
apiVersion: v1
kind: ServiceAccount
metadata:
  name: gitlab-admin
  namespace: kube-system
---
apiVersion: rbac.authorization.k8s.io/v1beta1
kind: ClusterRoleBinding
metadata:
  name: gitlab-admin
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name: gitlab-admin
  namespace: kube-system
```

```bash
kubectl apply -f gitlab-admin-service-account.yaml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep gitlab-admin | awk '{print $1}')
```
