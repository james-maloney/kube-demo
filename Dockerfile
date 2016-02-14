# Requires that you run make docker to build the binary and make the assets available
FROM busybox
ADD assets /assets
ADD kube-demo /go/bin/kube-demo
ENTRYPOINT /go/bin/kube-demo
EXPOSE 8080
