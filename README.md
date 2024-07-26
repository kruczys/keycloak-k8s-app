# Movie Review App

This project is a simple movie review application built using Next.js for the frontend and Express.js for the backend. It's deployed using Kubernetes and includes Keycloak for authentication and PostgreSQL for data storage. This project was made as final for "Technologie Chmurowe" class at University of Gdańsk.

## Table of Contents

- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Setup](#setup)
- [Running the Application](#running-the-application)
- [Deployment](#deployment)

## Architecture

The application consists of the following components:

- Frontend: Next.js application
- Backend: Express.js API
- Authentication: Keycloak
- Database: PostgreSQL
- Deployment: Kubernetes (Minikube for local development)

## Prerequisites

- Docker
- Minikube
- kubectl

## Setup

1. Clone the repository:

   ```
   git clone https://github.com/kruczys/keycloak-k8s-app.git
   cd keycloak-k8s-app
   ```
   
2. Start Minikube:
   
   ```
   minikube start
   ```

## Running the Application

1. Apply Kubernetes configurations:
   ```
   kubectl apply -f k8s/
   ```

2. Wait for all pods to be ready:
   ```
   kubectl get pods --watch
   ```

3. Set up port forwarding for accessing the application:
   ```
   chmod +x port-forward.sh
   ./port-forward.sh
   ```

4. Access the application:
   - Frontend: http://localhost:3000
   - Backend API: http://localhost:3001
   - Keycloak: http://localhost:8080

## Deployment

The application is deployed using Kubernetes. The `k8s` folder contains all necessary Kubernetes configuration files:

- `backend-deployment.yaml`: Deployment for the Express.js backend
- `backend-service.yaml`: 
- `configmap.yaml`: 
- `frontend-deployment.yaml`: Deployment for the Next.js frontend
- `frontend-service.yaml`:
- `hpa.yaml`: 
- `keycloak-deployment.yaml`: Deployment for Keycloak authentication server
- `keycloak-pvc.yaml`: 
- `keycloak-service.yaml`: 
- `postgres-deployment.yaml`: Deployment for PostgreSQL database
- `postgres-pvc.yaml`: 
- `postgres-service.yaml`: 
- `secret.yaml`: 



