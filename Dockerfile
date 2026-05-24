FROM nginx:alpine
LABEL org.opencontainers.image.base.name="nginx:alpine"
COPY . /usr/share/nginx/html
EXPOSE 80
