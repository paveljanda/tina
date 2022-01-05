FROM golang:1.17 as build-stage

WORKDIR /code
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o server cmd/main.go

FROM scratch as app-stage
COPY --from=build-stage /code/server /server

ENTRYPOINT ["/server"]
