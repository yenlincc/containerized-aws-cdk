FROM node:lts-alpine
COPY package.json package.json
COPY entrypoint.sh entrypoint.sh
RUN apk add --no-cache git && npm install -g && ls -lah
RUN $(npm bin)/cdk --version
ENTRYPOINT ["/entrypoint.sh"]