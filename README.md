[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/nicholas-raphael/project5/tree/master)

## Project Overview

The project allows you to make use of a pre-trained model to get information about the housing market in boston, a more detailed description can be found here [the data source site](https://www.kaggle.com/c/boston-housing) , which was initially taken from Kaggle. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
### Tasks

The project goal is to operationalize a machine learning microservice using [kubernetes](https://kubernetes.io/)

Throughout the project I was able to containerize a flask app, making easier to deploy the microservice, 
after that making available the image through docker hub allowed me to create a kubernetes cluster and deploy the image on a pod inside,
aplying these techniques to the project helped me understand concepts about microservices, what factors are important when deploying them and 
the place for tools like docker and kubernetes 

## Setup

* Create a virtualenv
```bash
    python3 -m pip install --user virtualenv
    python3 -m virtualenv --python=<path-to-Python3.7> .devops
    source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps
 
 1. Create an aws ecs cluster o user minikube locally
    minikube start
 2. Run the Docker Hub container with kubernetes
    kubectl create deploy project5 --image=[DOCKERHUB_ID]/project5
 3. Forward the container port to the host
    kubectl port-forward [POD_NAME] --address 0.0.0.0 80:80
