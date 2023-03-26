# Server setup command
curl -sfL https://get.k3s.io | sh -s - \
  --https-listen-port=6444 \
  --lb-server-port=6444 \
  --write-kubeconfig-mode=644 \
  --disable traefik

# Agent setup command
curl -sfL https://get.k3s.io | K3S_URL=https://{{ master_node }}:6444 K3S_TOKEN={{ cluster_token }} sh -

# Server delete command
/usr/local/bin/k3s-uninstall.sh

# Agent delete command
/usr/local/bin/k3s-agent-uninstall.sh

# Kill server command
/usr/local/bin/k3s-killall.sh

# rollout restart command
kubectl -n {{ namespace }} rollout restart {{ resource_kind }}
kubectl -n apps rollout restart daemonsets,deployments

# label a node
kubectl label node {{ node_name }} {{ label }}/{{ key }}={{ value }}
kubectl label node pi.eryx.local node-role.kubernetes.io/worker=worker

# remove label from node
kubectl label node {{ node_name }} {{ label }}/{{ key }}-
kubectl label node pi.eryx.local node-role.kubernetes.io/worker-

# Debugging using ephemeral containers
kubectl debug -it {{ pod_name }} --image={{ debugging_image }} --target={{ container_name }}