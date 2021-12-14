#!/bin/make -f
IMAGE_NAME=srv
BUILD_TAG=v1.0

SHELL:=/bin/bash

.PHONY: build, push

build: Dockerfile
	docker build --target build -t serereg/${IMAGE_NAME}:${BUILD_TAG} .

push:
	docker build --target build -t serereg/${IMAGE_NAME}:${BUILD_TAG} .
	docker push serereg/${IMAGE_NAME}:${BUILD_TAG}
