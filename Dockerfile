FROM nginx:stable
RUN touch /var/log/nginx/error.log
RUN chmod -R 766 /var/log/nginx
COPY public /usr/share/nginx/html
COPY nginx/default.template /etc/nginx/conf.d/default.template
CMD envsubst < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'