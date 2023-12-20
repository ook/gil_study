#!make

IMAGE_NAME := montecarlo

.PHONY: build
build:
	docker build --build-arg RUBY_VERSION=`cat .ruby-version` . -t ${IMAGE_NAME}
