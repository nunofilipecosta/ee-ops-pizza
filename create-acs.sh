#!/bin/bash

source ./logger.sh

clear

az acs create --orchestrator-type kubernetes --resource-group ee-ops-weu-acs-pizza --name myACSK8sCluster --generate-ssh-keys