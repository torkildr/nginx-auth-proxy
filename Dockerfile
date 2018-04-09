FROM nginx:latest
MAINTAINER torkildr

COPY backend-auth.conf /etc/nginx/conf.d/backend-auth.template

CMD \
    /bin/bash -c "envsubst '\${AUTH_BACKEND}' < /etc/nginx/conf.d/backend-auth.template > /etc/nginx/conf.d/backend-auth.conf" \
    && nginx -g "daemon off;"

