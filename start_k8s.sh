docker run -d \
    --volume=/sys:/sys:rw \
    --volume=/var/lib/docker/:/var/lib/docker:rw \
    --volume=/var/lib/kubelet/:/var/lib/kubelet:rw \
    --volume=/var/run:/var/run:rw \
    --volume=/cgroup:/cgroup:rw \
    --volume=`pwd`/manifests:/etc/kubernetes/manifests:rw \
    --net=host \
    --pid=host \
    --privileged \
    index.tenxcloud.com/google_containers/hyperkube:v1.2.5 \
    /hyperkube kubelet \
        --hostname-override=127.0.0.1 \
        --address=0.0.0.0 \
        --api-servers=http://127.0.0.1:8080 \
        --config=/etc/kubernetes/manifests \
        --pod-infra-container-image=index.tenxcloud.com/google_containers/pause:2.0 \
        --allow-privileged --v=2



        --enable-server \
        --kubeconfig=/etc/kubernetes/manifests \


