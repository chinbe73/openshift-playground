#!/bin/sh

export PGO_OPERATOR_NAMESPACE=pgo
oc create namespace "$PGO_OPERATOR_NAMESPACE"

curl https://raw.githubusercontent.com/CrunchyData/postgres-operator/v4.6.2/deploy/install-bootstrap-creds.sh > install-bootstrap-creds.sh
curl https://raw.githubusercontent.com/CrunchyData/postgres-operator/v4.6.2/installers/kubectl/client-setup.sh > client-setup.sh

chmod +x install-bootstrap-creds.sh client-setup.sh

export PGO_CMD=oc
./install-bootstrap-creds.sh
./client-setup.sh

oc -n "$PGO_OPERATOR_NAMESPACE" port-forward deployment/postgres-operator 8443 &
export PGO_APISERVER_URL="https://127.0.0.1:8443"

pgo version
