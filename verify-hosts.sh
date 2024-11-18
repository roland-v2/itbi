#!/bin/bash
grep -P '^d+(\.\d+){3}' /etc/hosts | while read line; do
  ip=$(echo line | awk '{print $1}')
  host=$(echo line | awk '{print $2}')
  ns_ip=$(nslookup $host 1.1.1.1 | awk '/^Address: / { print $2 }' | head -n 1)
  if [[ $ip != $ns_ip ]]; then
    echo "bogus ip for $host in /etc/hosts ($ip, got $ns_ip)
  fi
done
