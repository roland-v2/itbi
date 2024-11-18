#!/bin/bash

validate_ip() {
  local host=$1
  local ip=$2
  local dns_server=$3

  ns_ip=$(nslookup $host $dns_server | awk '/^Address: / { print $2 }' | head -n 1)
  if [[ $ip != $ns_ip ]]; then
    echo "ip for $host ($ip) is wrong. $ns_ip is correct"
  fi
}

validate_ip $1 $2 $3
