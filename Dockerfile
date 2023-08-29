# Build Step 1
FROM node:18 as build 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Build Step 2
FROM nginx:1.21.0-alpine as production
COPY --from=builder /app/build /usr/share/nginx/html/
# Expose port
EXPOSE 80
# Start nginx
CMD ["nginx", "-g", "daemon off;"]