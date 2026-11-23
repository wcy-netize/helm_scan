# Aikido Container Scan Test

This chart deploys a single-replica NGINX workload from the public
`nginx:1.27.5-alpine` image. The image is declared in `values.yaml` so a
repository or Helm chart scanner can discover and scan it.

Install the chart:

```sh
helm install aikido-test .
```

Check the deployment and access the NGINX welcome page:

```sh
kubectl get pods,service
kubectl port-forward service/aikido-test-aikido-container-scan-test 8080:80
```

Then open `http://localhost:8080`. Override the image with Helm's
`--set image.repository=... --set image.tag=...` options if needed.
