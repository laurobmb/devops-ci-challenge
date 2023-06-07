FROM node:15
WORKDIR /opt/app-root/src
COPY . /
RUN npm --version
RUN npm install
RUN npm run build
RUN npm run lint
#RUN npm run prettier
EXPOSE 3000
CMD [ "npm", "start" ]
 
