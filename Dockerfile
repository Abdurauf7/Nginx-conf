FROM nginx:latest
COPY nginx.conf /etc/nginx/nginx.conf
COPY build /usr/share/nginx/html

# Set the correct permissions for the CSS directory and files
RUN chown -R nginx:nginx /usr/share/nginx/html/css && \
    chmod -R 755 /usr/share/nginx/html/css

RUN chown -R nginx:nginx /usr/share/nginx/html/js && \
    chmod -R 755 /usr/share/nginx/html/js

RUN chown -R nginx:nginx /usr/share/nginx/html/assets && \
    chmod -R 755 /usr/share/nginx/html/assets

EXPOSE 90

CMD ["nginx", "-g", "daemon off;"]