# syntax=docker/dockerfile:1

FROM node:22-bookworm
WORKDIR /app
ARG DOCKER_TAG
ENV VITE_VERSION=$DOCKER_TAG
RUN echo "Bulding Docker image version: $DOCKER_TAG"
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 8000
