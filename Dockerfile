FROM golang:1.15-alpine

WORKDIR /go/src
COPY . ./

RUN go build -o app .

CMD "./app"
