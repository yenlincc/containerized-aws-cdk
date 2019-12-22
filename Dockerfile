FROM node:lts-alpine
ENV PATH=$PATH:/home/node/.npm-global/bin
COPY package.json package.json
RUN npm install -g
RUN echo $(npm bin -g)
RUN ls -lah /usr/local/bin
RUN cdk --version