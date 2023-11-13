# Overview

In this project, you will build a Github repository from scratch and create a scaffolding that will assist you in performing both Continuous Integration and Continuous Delivery.  
Apply code to perform an initial lint, test, and install cycle. Next, you'll integrate this project with Azure Pipelines to enable Continuous Delivery to Azure App Service.
Apply Agile to manage project.  

## Project Plan
* Trello's board: (https://trello.com/b/exRvPs3y/udacity-devops-planing)
* Link to a spreadsheet: (https://docs.google.com/spreadsheets/d/1kxkROtY00z__KKVUVds86NM_9FsFyIEu0WNLHirhYOo/edit?usp=sharing)

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







### Architectural Diagram - Azure Devops pipeline
![](/images/azure-devops.png)



#### Project running on Azure App Service


* Passing tests that are displayed after running the `make all` command from the `Makefile`

* Output of a test run

* Successful deploy of the project in Azure Pipelines.  [Note the official documentation should be referred to and double checked as you setup CI/CD](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops).

* Running Azure App Service from Azure Pipelines automatic deployment

* Successful prediction from deployed flask app in Azure Cloud Shell.  [Use this file as a template for the deployed prediction](https://github.com/udacity/nd082-Azure-Cloud-DevOps-Starter-Code/blob/master/C2-AgileDevelopmentwithAzure/project/starter_files/flask-sklearn/make_predict_azure_app.sh).
The output should look similar to this:

```bash
udacity@Azure:~$ ./make_predict_azure_app.sh
Port: 443
{"prediction":[20.35373177134412]}
```

* Output of streamed log files from deployed application

> 

## Enhancements

<TODO: A short description of how to improve the project in the future>

## Demo 

<TODO: Add link Screencast on YouTube>

