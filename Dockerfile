FROM node:lts-alpine
ENV PATH=$PATH:/home/node/.npm-global/bin
COPY package.json package.json
RUN echo $(npm bin -g)
RUN npm install -g
RUN cdk --version