#!/bin/bash
docker stop "$(docker ps -qa)"

# Keep from overloading public docker registry for testing
# Uncomment line below if preparing for production
# docker rmi "$(docker images -q)"
docker system prune -f -a --volumes

rancher_dirs="
       /etc/ceph \
       /etc/cni \
       /etc/kubernetes \
       /opt/cni \
       /opt/rke \
       /opt/containerd \
       /opt/rancher \
       /run/secrets/kubernetes.io \
       /run/calico \
       /run/flannel \
       /var/lib/calico \
       /var/lib/etcd \
       /var/lib/cni \
       /var/lib/kubelet \
       /var/lib/rancher/rke/log \
       /var/log/containers \
       /var/log/pods \
       /var/run/calico
"

for dir in ${rancher_dirs}; do
    echo "Removing ${dir}"
    rm -rf "${dir}"
done

