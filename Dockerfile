FROM nginx:alpine

# Static files
COPY index.html /usr/share/nginx/html/index.html
COPY apps.json  /usr/share/nginx/html/apps.json

# nginx.conf.template is processed at container startup by the official entrypoint.
# It substitutes ${COOLIFY_URL} and ${COOLIFY_API_TOKEN} from environment variables.
# Set those two variables in Coolify → Application → Environment Variables.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80