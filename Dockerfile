FROM nginx:stable-alpine

RUN mkdir /http
COPY nginx.conf /etc/nginx/nginx.conf
