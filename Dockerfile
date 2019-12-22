FROM node:lts-alpine
COPY package.json package.json
RUN ls -lah
RUN npm install -g
RUN echo $(npm bin -g)
RUN ls -lah /usr/local/bin
RUN cdk --version