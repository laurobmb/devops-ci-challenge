FROM quay.io/lagomes/14-alpine:v1
WORKDIR /opt/app-root/src
COPY . /
RUN mkdir /tmp/data
RUN npm install
EXPOSE 8080
USER 1001
CMD [ "npm", "start" ]
 