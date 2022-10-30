.PHONY: help install security

help:
	@cat $(firstword $(MAKEFILE_LIST))

install:
	composer install

security:
	symfony check:security
