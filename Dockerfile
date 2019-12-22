FROM node:lts-alpine
COPY package.json package.json
RUN ls -lah
RUN npm install -g
RUN ls -lah
RUN echo $(npm bin)
RUN ls -lah $(npm bin)
ENV PATH="$(npm bin):${PATH}"
RUN echo $PATH
RUN cdk --version