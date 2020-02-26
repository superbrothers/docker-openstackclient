IMAGE := superbrothers/openstackclient
OPENSTACKCLIENT_VERSION := 3.18.1

.PHONY: image
image:
		docker build --build-arg OPENSTACKCLIENT_VERSION=$(OPENSTACKCLIENT_VERSION) -t $(IMAGE):$(OPENSTACKCLIENT_VERSION) .
