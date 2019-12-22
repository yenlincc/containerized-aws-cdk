FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g && ls -lah
ENV PATH="${PATH}:/node_modules/bin"
RUN echo $PATH
RUN ls -lah /node_modules/bin
RUN cdk --version