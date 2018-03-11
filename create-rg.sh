#!/bin/bash

#pushd "$(dirname "${BASH_SOURCE[0]}")" || return 1
source ./logger.sh
#popd || return 1
clear

log_info 'Creating resource group "ee-ops-weu-acs-pizza"'
az group create -n ee-ops-weu-acs-pizza -l westeurope
log_info 'Finished creating resource group "ee-ops-weu-acs-pizza"'

log_info 'Creating resource group "ee-ops-weu-aks-pizza"'
az group create -n ee-ops-weu-aks-pizza -l westeurope
log_info 'Finished creating resource group "ee-ops-weu-aks-pizza"'
