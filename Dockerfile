FROM mcr.microsoft.com/cbl-mariner/distroless/base:2.0-nonroot

WORKDIR /app
COPY server /app

USER nonroot:nonroot
CMD [ "/app/server" ]