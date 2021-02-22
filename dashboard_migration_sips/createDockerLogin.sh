#!/bin/sh

if [ "$#" -ne 3 ]; then
    echo "parametros incorrectos"
    echo "./createDockerLogin <namespace> '<username>' '<password>'"
    exit;
fi
kubectl create secret docker-registry docker-login -n $1 --docker-username=$2 --docker-password=$3
