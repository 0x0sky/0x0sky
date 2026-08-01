FROM caddy:2-alpine

# The upstream image grants cap_net_bind_service to /usr/bin/caddy.
# This workload listens on 8080 and runs with no-new-privileges plus all
# capabilities dropped, so remove the unused file capability to keep exec valid.
RUN apk add --no-cache libcap-utils \
  && setcap -r /usr/bin/caddy \
  && apk del libcap-utils

COPY Caddyfile /etc/caddy/Caddyfile
COPY index.html /srv/index.html

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1:8080/health || exit 1
