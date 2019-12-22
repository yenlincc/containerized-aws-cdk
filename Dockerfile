FROM node:lts-alpine
COPY package.json package.json
RUN ls -lah
RUN npm install -g
RUN ls -lah
RUN NPM_BIN=$(npm bin)
ENV PATH="${NPM_BIN}:${PATH}"
RUN echo $PATH
RUN cdk --version