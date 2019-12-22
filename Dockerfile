FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g
ENV PATH "$PATH:$(npm bin -g)"
RUN cdk --version