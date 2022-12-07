#!/bin/bash

NAMESPACE=$1
if [ -z "$NAMESPACE" ] then

        echo "No namespace specified"
        exit 1

fi

kubectl get namespace $NAMESPACE -o json | jq '.spec = {"finalizers":[]}' > tmp.json
kubectl replace --raw "/api/v1/namespaces/$NAMESPACE/finalize" -f tmp.json

rm tmp.json
