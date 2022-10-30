.PHONY: help build

help:
	@cat $(firstword $(MAKEFILE_LIST))

build:
	docker-compose build
