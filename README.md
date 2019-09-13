# infra-docs for engineering blog
Common Docs for how to do create yaml kube, kube config for developer in fast way

## 1
I have use kustumize for patch yaml deployment.  Why don't I use HELM for manage package?
Because the tiller on the helme is very problematic with security issues and the tiller is sometimes slow.

sample-command: provision INFRASTUCTURE
>  sh run.sh


## 2
Kubernetes have feature for autoscaling pods base condition current performance.

for manual

> sh blog-resize.sh

then you input replica that you can want. 

## 3
we can setup kubernetes master or setup cluster in dashboard gke(only click)
for apply kube yaml, you can apply manual, example, first you must find name project, then you apply file yaml kube.
1. msql kubectl apply -f $dirname-msql-yaml
2. wordpress kubectl apply -f $dirname-wordpress-yaml

for instance aws(not kubernetest)
1. launch 2 instance(msql and wordpress). if you can't install docker, you can use OS(Core Os)
2. docker run accordingly enviroment your application.

DONE.
