FROM nginx:1.13.8

COPY index.html /usr/share/nginx/html/

CMD ["nginx", "-g", "daemon off;"]
