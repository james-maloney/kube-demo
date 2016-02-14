docker: docker-build docker-push

docker-build:
	-rm kube-up
	GOOS=linux GOARCH=amd64 go build -a
	docker build -t kube-demo:v0.1 .

docker-push:
	docker tag <registry>/kube-demo:v0.1
	gcloud docker push <registry>/kube-demo:v0.1
