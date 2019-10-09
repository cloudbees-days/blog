FROM abiosoft/caddy
EXPOSE 2015
WORKDIR /srv
COPY public .
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh", "/bin/parent", "caddy"]
