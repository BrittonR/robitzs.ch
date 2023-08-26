FROM ghcr.io/getzola/zola:v0.17.2 AS builder

WORKDIR /robitzsch
COPY . .
RUN ["zola", "build"]

FROM joseluisq/static-web-server:2
COPY --from=builder /robitzsch/public /public
ENV SERVER_PORT 8080
