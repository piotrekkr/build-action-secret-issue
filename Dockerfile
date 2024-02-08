FROM ubuntu

WORKDIR /app

COPY . .

RUN --mount=type=secret,id=dotenv-file,dst=.env \
    sleep 15 \
    cp .env .env.production
