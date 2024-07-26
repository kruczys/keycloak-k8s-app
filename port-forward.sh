#! /bin/bash

echo "Hello, let's port forward the services!"
kubectl port-forward svc/frontend-service 3000:3000 &
kubectl port-forward svc/backend-service 3001:3001 &
kubectl port-forward svc/keycloak-service 8080:8080 &