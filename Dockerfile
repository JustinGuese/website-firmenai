FROM nginxinc/nginx-unprivileged:alpine
COPY --chown=nginx:nginx ./docs /usr/share/nginx/html