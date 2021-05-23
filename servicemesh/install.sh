#/bin/bash
oc project openshift-operators
oc get secret -n openshift samples-registry-credentials -oyaml | grep -v "namespace:" | oc apply -f -
oc secrets link builder samples-registry-credentials
oc secrets link default samples-registry-credentials --for=pull
oc apply -f operators.yaml
read
oc delete subscription --all
oc apply -f operators-deploy.yaml
read
oc new-project istio-system
oc apply -f servicemesh.yaml
