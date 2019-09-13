#!/bin/bash
#
echo How to can set replica ?
read replica
cd $PWD/overlay/wordpress/staging
kubectl scale --replicas=$replica -f deployment.yaml
echo "Scale pods to be $replica"
