FROM node:lts-alpine
COPY package.json package.json
COPY entrypoint.sh entrypoint.sh
RUN npm install -g && ls -lah
RUN $(npm bin)/cdk --version
ENTRYPOINT ["/entrypoint.sh"]