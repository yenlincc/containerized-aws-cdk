FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g
RUN cdk --version