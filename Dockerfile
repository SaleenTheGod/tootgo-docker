FROM golang:1.15-rc-buster
RUN mkdir -p /opt/tootgo
WORKDIR /opt/tootgo
COPY ./conf.json /opt/tootgo/conf.json
COPY ./main.go /opt/tootgo/main.go
COPY ./replaceValues.sh /opt/tootgo/replaceValues.sh
RUN go get -d ./...
RUN go build -ldflags="-s -w" -tags netg
CMD ["sh", "replaceValues.sh"]
