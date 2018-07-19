# ee-ops-pizza

1. to run the scripts in this repository first run `az login`
2. execute `create-rg.sh`, this will create `acse`, `acs` and `aks` resource groups
3. execute `create-acs.sh` and then `create-aks.sh`

## Links

[Intro to acs-engine](https://github.com/Azure/acs-engine/)

`./acs-engine generate kubernetes-hybrid.json`

`az group deployment create --name "myACSEK8sCluster" --resource-group "<RESOURCE_GROUP_NAME>" \
    --template-file "./_output/<INSTANCE>/azuredeploy.json" \
    --parameters "./_output/<INSTANCE>/azuredeploy.parameters.json"`

[Intro to ACS](https://docs.microsoft.com/en-us/azure/container-service/kubernetes/container-service-intro-kubernetes)

[Quickstart ACS](https://docs.microsoft.com/en-us/azure/container-service/kubernetes/container-service-kubernetes-walkthrough)

[Intro AKS](https://docs.microsoft.com/en-us/azure/aks/intro-kubernetes)

[Quickstart AKA](https://docs.microsoft.com/en-us/azure/aks/kubernetes-walkthrough)
