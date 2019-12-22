FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g
RUN npx npm-check-updates -u
RUN ls -lah $(npm bin)
RUN cdk --version