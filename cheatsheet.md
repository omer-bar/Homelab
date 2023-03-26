# Server setup command
curl -sfL https://get.k3s.io | sh -s - \
  --https-listen-port=6444 \
  --lb-server-port=6444 \
  --write-kubeconfig-mode=644 \
  --disable traefik

# Agent setup command
curl -sfL https://get.k3s.io | K3S_URL=https://<Master_Node>:6444 K3S_TOKEN=<Token> sh -

# Server delete command
/usr/local/bin/k3s-uninstall.sh

# Agent delete command
/usr/local/bin/k3s-agent-uninstall.sh

# Kill server command
/usr/local/bin/k3s-killall.sh

# rollout restart command
kubectl -n <Name_Space> rollout restart <Resource_Kind>
kubectl -n apps rollout restart daemonsets,deployments

# label a node
kubectl label node <Node> <Label>/<Key>=<Value>
kubectl label node pi.eryx.local node-role.kubernetes.io/worker=worker

# remove label from node
kubectl label node <Node> <Label>/<Key>-
kubectl label node pi.eryx.local node-role.kubernetes.io/worker-

# Debugging using ephemeral containers
kubectl debug -it <Pod_Name> --image=<Debugging_Image> --target=<Container_Name>