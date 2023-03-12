# syntax=docker/dockerfile:1
FROM golang:1.20-alpine

WORKDIR /usr/src/app

RUN go install github.com/rubenv/sql-migrate/...@latest \
    && go install github.com/cosmtrek/air@latest
  
# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
COPY ../go.mod ./
RUN go mod download && go mod verify

COPY .. .
#RUN go build -v -o /usr/local/bin/app ./...

CMD ["air"]
