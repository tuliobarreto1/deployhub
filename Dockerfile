FROM nginx:alpine

# Static files
COPY index.html  /usr/share/nginx/html/index.html
COPY apps.json   /usr/share/nginx/html/apps.json
COPY favicon.svg /usr/share/nginx/html/favicon.svg

# nginx.conf.template is processed at container startup by the official entrypoint.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80