FROM nginx:stable-alpine
COPY ./index.html /usr/share/nginx/html
USER root
COPY ./nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]