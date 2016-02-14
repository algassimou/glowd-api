EXECUTABLE ?= server
IMAGE ?= glowd/backend

clean:
	go clean -i

deps:
	go get -d -v

test:
	go test

docker: build
	docker build --no-cache --rm -t $(IMAGE) .

$(EXECUTABLE): $(wildcard *.go)
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o $@

build: $(EXECUTABLE)
