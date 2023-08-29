FROM nginx:1.21.0-alpine as production
COPY /dist /usr/share/nginx/html/
# Expose port
EXPOSE 80
# Start nginx
CMD ["nginx", "-g", "daemon off;"]