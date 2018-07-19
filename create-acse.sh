#!/bin/bash

source ./logger.sh

clear

./tools/acs-engine-v0.14.2-darwin-amd64/acs-engine generate ./tools/acs-engine-v0.14.2-darwin-amd64/kubernetes-hybrid.json

az group deployment create --name "myACSEK8sCluster" --resource-group "ee-ops-weu-acse-pizza" --template-file "./_output/ee-pizza/azuredeploy.json" --parameters "./_output/ee-pizza/azuredeploy.parameters.json"