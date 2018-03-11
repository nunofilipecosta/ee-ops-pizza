#!/bin/bash
#################################
# Logger
#################################
function log_print_current_date {
  printf "%s" "$(date "+%Y-%m-%d %H:%M:%S")"
}

function log_info {
  log_print_current_date; echo " | $* "
}

function log_error {
  log_print_current_date; (>&2 echo " | $* ")
}

function log_function {
  set +u
  censored_params=$(log_hide_secrets "$2" "${*:3}")
  log_info "FUNCTION: $1 PARAMS: $censored_params"
  set -u
}

function log_hide_secrets {
  set +u
  declare -a param_secrets_array=("${!1}")
  local result

  if [[ -n ${param_secrets_array[*]} ]]; then
    # echo "array found"  #debug
    shift
    result="$*"
    for secret in "${param_secrets_array[@]}"
    do
      result=${result//$secret/"<secret>"}
    done
  else
    # echo "no array" #debug
    result=$*
  fi
  set -u
  # shellcheck disable=SC2001
  echo "$result" | sed "s/^.*\\[@\\] //"
}
