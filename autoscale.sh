#!/bin/sh

set -ef

cd "$(dirname "$0")/"

[ -z "$DEBUG" ] || set -x


# shellcheck disable=SC2044
for k11n in $(find . -name deployment.yaml); do
    overlay=$(dirname "$k11n")
    echo "deployment : $overlay"
read replica
    msg=$( kubectl scale --replicas=$replica -f $overlay - 2>&1)  
        echo "Replica: $msg"    
done
exit 0
