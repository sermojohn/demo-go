# syntax=docker/dockerfile:1
FROM golang:1.15-alpine AS builder

WORKDIR /build/

COPY . ./

RUN go build -o app .

FROM alpine:3.13.3

WORKDIR /go/bin

COPY --from=builder /build/app ./app
COPY . ./

CMD ["./app"]
