[![CircleCI](https://circleci.com/gh/darylmcneil/testkube.svg?style=svg)](https://circleci.com/gh/darylmcneil/testkube)
[![CircleCI](https://circleci.com/gh/darylmcneil/testkube.svg?style=shield)](https://circleci.com/gh/darylmcneil/testkube)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
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
Summary: Operationalize a machine learning microservice API
         using docker and kubernetes.
          1. Set up virtual environment and install dependencies via MakeFile "make setup"(to setup and activate virtual
             evironment) and "make install" to install dependencies via requirements.txt file.
          2. Containerize app.py file (building docker image) using your DockerFile and the "./run_docker.sh" via bash terminal CLI.
          3. Deploy and run appy.py using your DockerFile and the CMD ["python","app.py"]
          4. While the app is running in CLI terminal#1 open a new terminal and run "./ make_prediction.sh" via CLI#2.
          5. Add logging statement to app.py and copy and paste results from CLI#1 into docker_out.txt.
          6. Upload the docker image into your docker hub using "./upload_docker.sh" via the bash terminal CLI.
          7. Install "MiniKube" 
          8. Start kubernetes via "minikube start" command.
          9. Once kubernetes cluster is up and running pull docker image from docker hub using "./run_kubernetes.sh" via bash CLI#1.
          10. Once the image with your application is running on your kubernetes pods then open a new bash CLI#2 and 
              run the "./make_prediction.sh" via bash CLI#2.
          11. Copy and paste results from bash CLI#1 into kubernetes_out.txt.
          12. Create an account with CIRCLECI (circleci.com) and choose the create with github option to connect all your repositories
              with your CIRCLECI account.
          13. Select the repository you wish to test and "Start Build"
          14. Copy and paste success tag and/or shield in your "readme.md file.