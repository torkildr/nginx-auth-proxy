FROM nginx:latest
MAINTAINER torkildr

COPY nginx.template /etc/nginx/conf.d/default.template

CMD \
    /bin/bash -c "envsubst '\${AUTH_BACKEND}' < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf" \
    && nginx -g "daemon off;"

