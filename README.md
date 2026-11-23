# Aikido Container Scan Test

This chart deploys NGINX (`nginx:1.27.5-alpine`) and two additional test
workloads: Redis (`redis:7.2.5-alpine`) and Apache HTTP Server
(`httpd:2.4.59-alpine`). The image versions are pinned in `values.yaml` so they
can be bumped later for testing. The additional workloads are separate
Deployments and do not have Services.

Install the chart:

```sh
helm install aikido-test .
```

Check the deployments and access the NGINX welcome page:

```sh
kubectl get pods,service
kubectl port-forward service/aikido-test-aikido-container-scan-test 8080:80
```

Then open `http://localhost:8080`. To change an additional test image, edit its
`repository` or `tag` under `testImages` in `values.yaml`.
