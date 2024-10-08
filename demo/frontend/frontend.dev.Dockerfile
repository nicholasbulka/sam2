# Use an official Node runtime as the base image
FROM node:22.9.0

WORKDIR /usr/src/app/jsframework

COPY entrypoint.dev.sh /usr/src/app/jsframework

RUN chmod +x /usr/src/app/jsframework/entrypoint.dev.sh

COPY ./package.json /usr/src/app/jsframework

RUN yarn install

COPY ./ /usr/src/app/jsframework

EXPOSE 5173

ENTRYPOINT ["/usr/src/app/jsframework/entrypoint.dev.sh"]
