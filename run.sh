#!/bin/sh

set -ef

cd "$(dirname "$0")/.."

[ -z "$DEBUG" ] || set -x


# shellcheck disable=SC2044
for k11n in $(find . -name kustomization.yaml); do
    overlay=$(dirname "$k11n")
    echo "apa overlaynya : $overlay"
    msg=$(kustomize build "$overlay" | kubectl apply -f - 2>&1)  
        echo "Overlay: $overlay" 
        echo "Message: $msg"    
done
url=""
svc="wordpress"
while [ -z $url ]; do
 url=$(kubectl get svc $svc --template="{{range .status.loadBalancer.ingress}}{{.ip}}{{end}}")
 [ -z "url" ] && sleep 10
done
echo 'DONE! The blog can be acccesed at' $url

exit 0
