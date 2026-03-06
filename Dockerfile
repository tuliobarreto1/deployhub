FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
COPY apps.json /usr/share/nginx/html/apps.json
EXPOSE 80