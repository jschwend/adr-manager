# syntax=docker/dockerfile:1

FROM node:22-bookworm
WORKDIR /app
ARG DOCKER_TAG
ENV VITE_VERSION=$DOCKER_TAG
RUN echo "Bulding Docker image version: $VITE_VERSION"
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 8000
