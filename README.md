# Overview

In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery.  
Apply code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.
Apply Agile to manage project.  

## Project Plan
* Trello's board: (https://trello.com/b/exRvPs3y/udacity-devops-planing)
* Link to a spreadsheet: (https://docs.google.com/spreadsheets/d/1kxkROtY00z__KKVUVds86NM_9FsFyIEu0WNLHirhYOo/edit?usp=sharing)
## Badge

[![Python application test with Github Actions](https://github.com/duyliken3/ud-az-devops-02/actions/workflows/main_ud-az-devops-02.yml/badge.svg?branch=main)](https://github.com/duyliken3/ud-az-devops-02/actions/workflows/main_ud-az-devops-02.yml)  
[![Build Status](https://dev.azure.com/duyliken2/Flask%20ML%20Application/_apis/build/status%2Fduyliken3.ud-az-devops-02?branchName=main)](https://dev.azure.com/duyliken2/Flask%20ML%20Application/_build/latest?definitionId=3&branchName=main)


## Instructions

### Architectural Diagram - GitHub Actions
![](/images/ci-diagram.png)

#### Project cloned into Azure Cloud Shell

* Configuring Github - create a ssh key
```ssh
    ssh-keygen -t rsa -b 2048 -C "your-email@gmail.com"
```

* Copy the public key to your GitHub Account -> Settings -> SSH and GPG keys

![](/images/config-ssh-key-github.png)

* In Azure Cloud Shell, clone your repo:

```ssh
    git clone https://github.com/duyliken3/ud-az-devops-02.git
```
![](/images/git_checkout_into_auzre.png)

* Checkout branch: feature/git-action

```ssh
    cd ud-az-devops-02
    pwd
    git checkout origin/feature/git-action
```

* Create virtual enviroment python

```ssh
    python3 -m venv ~/.venv
    source ~/.venv/bin/acitvate
```

* Passing tests that are displayed after running the `make all` command from the `Makefile`

![](/images/git_action_make_all.png)

* Github Action

![](/images/github_actions.png)


### Architectural Diagram - Azure Devops pipeline
![](/images/azure-devops_cd.png)

* Checkout `main` branch

```ssh
    git checkout main
```

* Passing tests that are displayed after running the `make all` command from the `Makefile`

```ssh
    make all
```

* Run app local on cloud shell

```ssh
    export FLASK_APP=app.py
    flask run
```

* Call predict api in local

```ssh
    /.make_prediction.sh
```

![](images/mak_prediction.png)

* In Azure Cloud Shell, run `commands.sh` create azure app service

```ssh
    /.commands.sh
```

![](images/azure_overview_webapp.png)

* Setup azure devops piepline - https://dev.azure.com/  
Create a new private project. ![](images/azure_devops_site.png)  
Create a new service connection ![](images/service_connection.png)  
Create a new pipeline base on `azure-pipelines.yml` ![](images/azure_pipelines.png)  


* Check that the webapp is running opening his URL, example:
```ssh
    https://ud-az-devops-02.azurewebsites.net/
```
![](images/azure_webapp.png)

* Update the file make_predict_azure_app.sh with the webapp service end point

* Run `./make_predict_azure_app.sh`
![](/images/make_predict_azure_app.png)

* Log tail azure web app

```ssh
    az webapp log tail --name {webapp-name} --resource-group {resource-group-name}
```
![](/images/trail_log.png)

* Loading Test, using Locust
```ssh
    ./loadingtest.sh
```
![](/images/locust.png)
![](/images/loadingtest.png)


## Enhancements

* Updgrade new UI application
* Implement Cricle CI
* Traning new ML model
* Add new test case for predict function

## Demo 

Demo video

