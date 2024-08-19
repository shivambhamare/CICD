FROM node:16.17.0-alpine as builder
WORKDIR /app
COPY ./yarn.lock .
COPY . .
ENV VITE_APP_TMDB_V3_API_KEY=${TMDB_V3_API_KEY}
RUN yarn build
