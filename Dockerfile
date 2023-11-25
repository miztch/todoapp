FROM golang:1.20-alpine as server-build

WORKDIR /go/src/todoapp
COPY . . 

RUN apk upgrade --update && apk --no-cache add git

CMD ["go","run","main.go"]