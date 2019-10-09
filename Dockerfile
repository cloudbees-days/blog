FROM nginx:stable
COPY public /usr/share/nginx/html
COPY nginx/default.template /etc/nginx/conf.d/default.template
ENTRYPOINT envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'