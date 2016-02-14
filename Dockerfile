FROM alpine:3.3

RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
ADD server /bin/
ENTRYPOINT ["/bin/server"]