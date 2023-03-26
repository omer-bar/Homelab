# Homelab
This repo is the current state of the application layer of my clusters. It is powered by various [Argo Projects][argo].

## Structure
### [cluster-init][argoproj]
Applications responsible for automating the installation, maintenance, and removal of all other applications.

### [cluster-critical][critical]
Applications that integrate at a level critical to the cluster as a whole. Installed prior to general application
installation.

### [cluster-apps][apps]
All general applications.

### [cluster-debugging][debugging]
Applications used for debugging purposes of cluster/containers

## Powered By
* [Argo Projects][argo] Handling the automated deployment and generation of files
* [RenovateBot](https://github.com/renovatebot/renovate) Handling the notification of new upstream releases

#### Credits
* [dirtcajunrice][dirtycajunrice] for his enormous help in creating, debugging and teaching me this subject

[argo]: https://argoproj.github.io/
[argoproj]: /cluster-init/argoproj
[apps]: /cluster-apps
[critical]: /cluster-critical
[debugging]: /cluster-debugging
[dirtycajunrice]: https://github.com/dirtycajunrice/gitops