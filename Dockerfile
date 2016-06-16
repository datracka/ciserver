FROM node:6.2.1-slim

#Create App directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#install node dependencies
COPY package.json /usr/src/app
RUN npm install

#bundle app source
COPY index.js /usr/src/app

EXPOSE 3000

CMD ["npm", "start"]
