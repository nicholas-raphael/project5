[![CircleCI](https://circleci.com/gh/circleci/circleci-docs.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

## Project Overview

The project allows you to make use of a pre-trained model to get information about the housing market in boston, a more detailed description can be found here [the data source site](https://www.kaggle.com/c/boston-housing) , which was initially taken from Kaggle. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.
### Tasks

The project goal is to operationalize a machine learning microservice using [kubernetes](https://kubernetes.io/)
* Complete the Dockerfile to containerize the application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

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

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl