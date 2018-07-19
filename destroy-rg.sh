#!/bin/bash

source ./logger.sh

clear

log_info 'Deleting resource group "ee-ops-weu-acs-pizza"'
az group delete -n ee-ops-weu-acs-pizza --no-wait --yes

log_info 'Deleting resource group "ee-ops-weu-aks-pizza"'
az group delete -n ee-ops-weu-aks-pizza --no-wait --yes

log_info 'Deleting resource group "ee-ops-weu-acse-pizza"'
az group delete -n ee-ops-weu-acse-pizza --no-wait --yes