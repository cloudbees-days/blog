FROM abiosoft/caddy
ENV PORT=2015
WORKDIR /srv
COPY public .