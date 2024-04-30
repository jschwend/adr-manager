# syntax=docker/dockerfile:1

FROM node:22-bookworm
WORKDIR /app
COPY . .
RUN npm install
CMD ["npm", "start"]
EXPOSE 8000
