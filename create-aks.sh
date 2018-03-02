#!/bin/bash
clear

az acs create --orchestrator-type kubernetes --resource-group ee-ops-weu-aks-pizza --name myAKSK8sCluster --generate-ssh-keys