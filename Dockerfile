# STEP 1 build static website
FROM node:alpine

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json package-lock.json /app/

RUN cd /app && npm set progress=false && npm install && npm install -g @angular/cli

#COPY project files into docker image
COPY . /app

CMD ng serve --host 0.0.0.0
