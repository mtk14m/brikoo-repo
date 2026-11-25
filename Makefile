# Makefile
HOST_UID ?= $(shell id -u)
HOST_GID ?= $(shell id -g)
export HOST_UID HOST_GID

DC  = docker compose
PHP = $(DC) exec php

.DEFAULT_GOAL := help
.PHONY: help build up down sh composer test test-unit coverage

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*## ' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*## "}; {printf "  %-12s %s\n", $$1, $$2}'

build: ## Build the PHP image
	$(DC) build

up: ## Start containers in the background
	$(DC) up -d

down: ## Stop and remove containers
	$(DC) down --remove-orphans

sh: ## Open a shell in the php container
	$(PHP) bash

composer: ## Run Composer, e.g.: make composer c="require foo/bar"
	$(PHP) composer $(c)

test: ## Run all test suites (options: c="--filter=Money")
	$(PHP) vendor/bin/phpunit $(c)

test-unit: ## Run the unit test suite
	$(PHP) vendor/bin/phpunit --testsuite unit $(c)

coverage: ## Generate a coverage report (text + HTML in var/coverage)
	$(PHP) vendor/bin/phpunit --testsuite unit --coverage-text --coverage-html var/coverage