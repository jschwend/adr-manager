# syntax=docker/dockerfile:1

FROM node:21-bookworm
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 8000