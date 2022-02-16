#!/bin/bash

export METADATA_HOST="169.254.170.2"

# Get the private IP address of the Fargate Task
if nc -z $METADATA_HOST 22 2>/dev/null; then
    echo "Running in Fargate. Setting BIND_ON_IP..."
    export BIND_ON_IP=$(wget -qO- http://169.254.170.2/v2/metadata | jq -r .Containers[0].Networks[0].IPv4Addresses[0])
    echo "Set BIND_ON_IP to " $BIND_ON_IP
fi

source /etc/temporal/entrypoint.sh