# PYTHON GITOPS

### Deploy Flux

```bash
export GITHUB_TOKEN=<your-token>
export GITHUB_USER=<your-user>
export REPO=<current-repo>
# Run the bootstrap for a repository on your personal GitHub account:

flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=$REPO \
  --branch=minikube \
  --namespace=flux \
  --path=./clusters/minikube \
  --personal \
  --components-extra=image-reflector-controller,image-automation-controller
```
