.PHONY: pre-commit-run-all
pre-commit-run-all:
	GOARCH=amd64 CGO_ENABLED=1 pre-commit run --all-files

.PHONY: install-deps
install-deps:
	./scripts/install-deps.sh

test:
	go test ./...
