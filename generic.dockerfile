# FROM node:argon
FROM mhart/alpine-node
RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
EXPOSE 3000 8080 8000 8443
CMD [ "npm", "start" ]
