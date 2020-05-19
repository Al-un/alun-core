# Al-un core <!-- omit in toc -->

- [Docker compose](#docker-compose)
- [K8s api](#k8s-api)
- [Digital Ocean droplet setup](#digital-ocean-droplet-setup)
- [Secret in docker](#secret-in-docker)

## Docker compose

```sh
# local development
sudo docker-compose -f docker-compose.dev.yml up --build

# Run the full stack
sudo docker-compose -f docker-compose.monolith up --build
```

Ports binding:

- `8000`: monolithic back-end
- `8001`: microservices: users
- `8002`: microservices: memos
- `8080`: front-end

## K8s api

```sh
kubectl apply -f api-deploy.yaml
kubectl get deployment
kubectl rollout status deployment.v1.apps/api-deployment --watch=false

kubectl get rs
kubectl get pods --show-labels
```

## Digital Ocean droplet setup

```sh
# Install Docker
apt-get update

# https://www.how2shout.com/how-to/how-to-install-docker-ce-on-ubuntu-20-04-lts-focal-fossa.html
apt-get install docker-compose
```

## Secret in docker

- https://docs.docker.com/engine/swarm/secrets/#use-secrets-in-compose
- https://stackoverflow.com/questions/42139605/how-do-you-manage-secret-values-with-docker-compose-v3-1
- https://docs.docker.com/compose/compose-file/#secrets
