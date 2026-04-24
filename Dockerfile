FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y --no-install-recommends ca-certificates

COPY tunnel-node /usr/local/bin/

ENV PORT=8080
EXPOSE 8080

CMD ["tunnel-node"]
