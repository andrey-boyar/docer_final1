FROM golang:1.22.0

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod tidy

COPY . .

#RUN go test -v
RUN go build -o app

CMD ["./app"]
