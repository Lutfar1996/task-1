# Flarie TODO Application


This repository contains the dockerized version of the Flarie TODO application with Kubernetes manifests and CI/CD pipeline.


## Steps to Run the Application


1. Clone the Repository:
   ```bash
   git clone https://github.com/<your-username>/flarie-todo.git
   cd flarie-todo

2. Build and Run Docker Locally
   ```bash
   docker build -t lutfar1996/flarie-todo .
   docker run -p 34567:34567 lutfar1996/flarie-todo

3. Deploy to Kubernetes
   ```bash
   kubectl apply -f k8s/
 
# CI/CD Pipeline
    The CI/CD pipeline is set up using GitHub Actions.
    It triggers on every push or pull_request to the main branch.
    The pipeline:
       -> Builds the Docker image.
       -> Pushes the image to Docker Hub.

# Links
## GitHub Repository: Flarie TODO Fork
## Docker Hub Image: lutfar1996/flarie-todo       
 
# Kubernetes Manifests
## The k8s/ directory contains the following manifests:

### deployment.yaml - Defines the Deployment for the application.
### service.yaml - Exposes the application as a NodePort service on port 34567. 