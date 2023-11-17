FROM debian

WORKDIR /app

COPY server /app

#CMD [ "/app/server" ]
ENTRYPOINT ["/app/server"]