FROM ubuntu

WORKDIR /app

COPY . .


RUN --mount=type=secret,id=dotenv-file,dst=.env \
   cp .env .env.production

ARG BUILD_ENV
