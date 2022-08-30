# Resources 
### Deploy Sample Application 
https://docs.openshift.com/container-platform/4.10/monitoring/managing-metrics.html
### PodMonitor 
https://github.com/rhobs/prometheus-example-app/blob/master/manifests/pod-monitor.yaml
https://doc.crds.dev/github.com/prometheus-operator/prometheus-operator/monitoring.coreos.com/PodMonitor/v1@v0.58.0
### Enable Monitoring 
https://docs.openshift.com/container-platform/4.10/monitoring/enabling-monitoring-for-user-defined-projects.html#enabling-monitoring-for-user-defined-projects
### Openshift Console UI 
https://github.com/zhuje/console

# TODO Script -- NOT TESTED  
To run on MAC </br>
// change permissions </br>
chmod +x start.sh </br>
// run script </br>
./start.sh </br>


# CLI 
### Deploy Pod 
oc apply -f prometheus-example-app.yaml </br>
oc -n ns1 get pod
### Deploy ServiceMonitor 
oc apply -f example-app-service-monitor.yaml </br>
oc -n ns1 get servicemonitor
### Deploy PodMonitor 
oc apply -f example-app-pod-monitor.yaml </br>
oc -n ns1 get podmonitor
### Enable Monitoring  
<i>// Add data.config.yaml. enableUserWorkload: true </br></i>
oc -n openshift-monitoring edit configmap cluster-monitoring-config </br></br>
<i>// OR if there is no ConfigMap </br></i>
oc -f apply cluster-monitoring-config.yaml </br></br>
<i>// Check that the prometheus-operator, prometheus-user-workload and thanos-ruler-user-workload pods are running in the openshift-user-workload-monitoring project. It might take a short while for the pods to start:</br></i>
oc -n openshift-user-workload-monitoring get pod

