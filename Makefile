.PHONY: install-deps
install-deps:
	go install github.com/sqs/goreturns \
        && go install github.com/securego/gosec/v2/cmd/gosec@v2.7.0 \
	&& go install golang.org/x/lint/golint \
        && go install github.com/golangci/golangci-lint/cmd/golangci-lint@v1.40.0
