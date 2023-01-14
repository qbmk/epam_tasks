# Homework

## Part 1 – Configure application

1.  Create a service connection in a Azure DevOps project to your subscription - <https://learn.microsoft.com/en-us/azure/devops/pipelines/library/service-endpoints?view=azure-devops&tabs=yaml>
2.  Find a .net pet project for the experiments
3.  Build your app locally .net project via dotnet tool. dotnet restore/build/run
4.  Create an Azure DevOps repo - <https://learn.microsoft.com/en-us/azure/devops/repos/git/create-new-repo?view=azure-devops> You can use import repository to import from existing source control version like github

![](media/589201eceac0599725028bcda77970f7.png)

1.  Create a branching policy for you application. Added yourself as a reviewer - <https://learn.microsoft.com/en-us/azure/devops/repos/git/branch-policies?view=azure-devops&tabs=browser> As branching strategy use a github flow (It will be applied by default when you strict commit to your main branch)

![](media/c669fded4ab0ecd938fd00542c28e342.png)

## Part 2 – Configure a pipeline to deploy infrastructure

### Terraform storage account

1.  Create a separate resource group and deploy azure storage account - <https://learn.microsoft.com/en-us/azure/storage/common/storage-account-create?tabs=azure-portal>
2.  Create a container with the name “tfstate” and remember the name. use portal settings. In this storage account you will be store your tf state file

![](media/f18e04d541b963cb49baf4b741c3584d.png)

### Terraform preparation

1.  Create another repo to store devops code
2.  Create a folder terraform
3.  Add app service implementation - <https://learn.microsoft.com/en-us/azure/app-service/provision-resource-terraform>
4.  Integrate application insights with app service.

    ![](media/3e2d6a2c619c16b3dbe8ec8401c68400.png)

5.  Updated backend “azurerm” according to the guide - <https://learn.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage?tabs=azure-cli>
6.  Run az login or Connect-AzAccount to connect the azure subscription from your local
7.  Run terraform apply to deploy infrastructure

    ![](media/a3cb6091281dc96398a93c5dc1b0c226.png)

    ![](media/0600762a7768bdcd96e142e04e2abc56.png)

### Create a terraform pipeline

1.  Create a yaml pipeline with the following steps: terraform install, terraform init, terraform plan/apply. Plan is an optional one
2.  Inside yaml pipeline add trigger to main branch. The scenario – when main is updated, pipeline should run automatically - <https://learn.microsoft.com/en-us/azure/devops/pipelines/yaml-schema/trigger?view=azure-pipelines>
3.  Added 3 steps – terraform install, terraform init, terraform plan/apply. Plan is an optional one. You may add it as 4th step

    ![](media/ef3d0dce6c9af73a75df3b334aadb4a7.png)

    ![](media/9038c9475a561667200056221f900a5c.png)
