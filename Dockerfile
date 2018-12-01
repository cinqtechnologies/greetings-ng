#FROM node:9-slim
#ENV PORT 8080
#EXPOSE 8080
#WORKDIR /usr/src/app
#COPY . .
#CMD ["npm", "start"]

#prod version
FROM nginx:alpine
ENV PORT 8080
EXPOSE 8080
WORKDIR /usr/share/nginx/html
COPY dist/ .
CMD ["npm", "prod"]
