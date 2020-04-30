FROM node:lts-alpine
COPY package.json package.json
COPY entrypoint.sh entrypoint.sh
RUN apk add --no-cache git python3 && npm install -g && ls -lah
RUN git config --global user.email "thinkthenrant@gmail.com" && git config --global user.name "ThinkThenRant" 
RUN $(npm bin)/cdk --version
ENTRYPOINT ["/entrypoint.sh"]