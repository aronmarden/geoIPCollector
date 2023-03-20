#!/bin/bash
#NOT TESTED YET - TBD

ip_address=$(curl -s "https://api.ipify.org?format=json" | jq -r '.ip')
ip_number=$(printf '%d\n' "$(echo "${ip_address//./ }" | awk '{printf "%d", $1*(256^3)+$2*(256^2)+$3*256+$4}')")

logger -p user.info "Public IP Address (as a number): $ip_number"
