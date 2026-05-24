FROM nginx:alpine
LABEL org.opencontainers.image.base.name="nginx:alpine"
COPY . /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
