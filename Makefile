.DEFAULT_GOAL := build

fmt:
		go fmt
.PHONY: fmt

lint: fmt
		staticcheck
.PHONY: lint

vet: lint
		go vet
.PHONY: vet

test: vet
		go test
.PHONY: test

build: test
		go mod tidy
		go build
.PHONY: build

run: build
		docker compose up -d --build
.PHONY: run

stop:
		docker compose down
.PHONY: stop
