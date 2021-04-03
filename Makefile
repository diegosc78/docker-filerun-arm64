NS ?= ponte124
VERSION ?= latest-arm64v8
IMAGE_NAME ?= filerun
CONTAINER_NAME ?= filerun
CONTAINER_INSTANCE ?= manual

build: 
	rm -rf ./FilerunSource
	git clone https://github.com/filerun/docker.git FilerunSource
	cp ./Dockerfile.arm64v8 ./FilerunSource/
	docker build -t $(NS)/$(IMAGE_NAME):$(VERSION) -f Dockerfile.arm64v8 ${PWD}/FilerunSource

push:
	docker push $(NS)/$(IMAGE_NAME):$(VERSION)
