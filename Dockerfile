FROM node:12
ENV PORT 3000

#create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#installing dependencies
COPY package*.json /usr/src/app/
RUN npm install 

#copying source files
COPY . /usr/src/app

#building app
RUN npm run build
EXPOSE 3000

#running the app
CMD "npm" "run" "dev"