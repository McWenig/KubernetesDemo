#!/bin/bash

kubectl apply -f 01-namespace.yaml
kubectl apply -f 02-default-backend.yaml
kubectl apply -f 03-configmap.yaml
kubectl apply -f 04-tcp-services-configmap.yaml
kubectl apply -f 05-udp-services-configmap.yaml
kubectl apply -f 06-rbac.yaml
kubectl apply -f 06-with-rbac.yaml
kubectl patch deployment -n ingress-nginx nginx-ingress-controller --type='json' --patch=07-publish-service-patch.yaml
kubectl apply -f 08-service-l4.yaml
kubectl apply -f 09-patch-configmap-l4.yaml
kubectl apply -f 10-patch-service-with-rbac.yaml
