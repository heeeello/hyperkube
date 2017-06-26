FROM gcr.io/google_containers/hyperkube-amd64:v1.2.5

# My k8s need nfs mount volumes.  nfs mount may report: mount: wrong fs type, bad option, bad superblock on 127.0.0.1:/nfs_share/
RUN apt-get update && apt-get install -y nfs-common
