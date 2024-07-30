#specify the node version
ARG NODE_VERSION=16.0.0

# FROM node:alpine
FROM node:${NODE_VERSION}-alpine

# Use production node environment by default
ENV NODE_ENV development

#Install some dependencies
WORKDIR /usr/app
COPY ./ ./

RUN npm install

# Run the application as a non-root user
USER node

# Copy the rest of the source files into the image
COPY . .

# Expose the port that the application listens on
EXPOSE 8089

# Run the application
CMD NODE_ENV=production PORT=8089 ./node_modules/.bin/webpack serve --host 0.0.0.0 --mode production