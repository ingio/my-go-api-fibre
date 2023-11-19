FROM debian

WORKDIR /app

COPY server /app

ENTRYPOINT ["/app/server"]