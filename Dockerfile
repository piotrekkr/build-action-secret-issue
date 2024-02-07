FROM ubuntu

WORKDIR /app

COPY . .

ARG BUILD_ENV

RUN --mount=type=secret,id=dotenv-file,dst=.env \
   cp .env .env.production
