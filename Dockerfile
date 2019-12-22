FROM node:lts-alpine
COPY package.json package.json
RUN npm install -g && ls -lah
RUN ls -lah /node_modules
ENV PATH="${PATH}:/node_modules/bin"
RUN echo $PATH
RUN cdk --version