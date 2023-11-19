FROM alpine:3.17

WORKDIR /app

COPY server /app

ENTRYPOINT ["/app/server"]