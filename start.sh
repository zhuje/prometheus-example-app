#! /bin/bash
oc apply -f prometheus-example-app.yaml 
oc apply -f example-app-service-monitor.yaml 
oc apply -f example-app-pod-monitor.yaml 
oc apply -f cluster-monitoring-config.yaml




