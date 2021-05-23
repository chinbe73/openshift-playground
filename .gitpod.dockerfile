FROM gitpod/workspace-full

RUN mkdir /home/gitpod/bin \
 && curl https://mirror.openshift.com/pub/openshift-v4/clients/ocp/4.7.2/openshift-client-linux-4.7.2.tar.gz -s | tar xz -C /home/gitpod/bin \
 && echo 'if [ -f "$GITPOD_REPO_ROOT/.bashrc" ]; then source $GITPOD_REPO_ROOT/.bashrc; fi' >> /home/gitpod/.bashrc
