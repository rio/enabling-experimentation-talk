# Enabling Experimentation

## Quick Start

You only require 3 things:

- Docker
- Visual Studio Code
- Dev Containers extension

After you open this repository in vscode, it should ask you if you want to reopen it in a devcontainer.
Once that's done open a terminal in vscode, run `task demo:up` and wait until it is finished.

You should now be able to go to http://argocd.localhost and see gitlab and gitea bing deployed.

```
kubectl config set-cluster vcluster --server=https://kubernetes.default --certificate-authority=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt
kubectl config set-credentials cluster-admin --token=$(cat /var/run/secrets/kubernetes.io/serviceaccount/token)
kubectl config set-context vcluster-admin --cluster=vcluster --user=cluster-admin
kubectl config use-context vcluster-admin
```

https://dl.k8s.io/v1.28.1/bin/linux/amd64/kubectl
https://github.com/linkerd/linkerd2/releases/download/stable-2.14.0/linkerd2-cli-stable-2.14.0-linux-amd64
