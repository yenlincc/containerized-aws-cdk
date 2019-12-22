FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g
ENV PATH=$PATH:/home/node/.npm-global/bin
RUN cdk --version