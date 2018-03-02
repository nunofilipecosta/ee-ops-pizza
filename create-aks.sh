#!/bin/bash
clear

az aks create --resource-group ee-ops-weu-aks-pizza --name myAKSK8sCluster --node-count 1 --generate-ssh-keys