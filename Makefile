IMAGE := superbrothers/openstackclient
OPENSTACKCLIENT_VERSION := 5.0.0

.PHONY: image
image:
		docker build --build-arg OPENSTACKCLIENT_VERSION=$(OPENSTACKCLIENT_VERSION) -t $(IMAGE):$(OPENSTACKCLIENT_VERSION) .
