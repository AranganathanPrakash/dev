#FROM node:16-alpine
#workdir /app
#COPY . ./
#RUN npm install -g serve
#CMD ["serve", "-s", "build"]

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY build/ /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
