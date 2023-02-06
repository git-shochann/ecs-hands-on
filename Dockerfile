# ベースとなるDocker Image
FROM golang:1.17.0-alpine3.14

# 実際にどのディレクトリで実行するか
WORKDIR /go/src/app

# コンテナ内でのコマンドの実行
RUN apk update && apkadd git

# ホスト側のファイルをイメージ側の指定したディレクトリにコピーするコマンド

COPY main.go .

COPY go.mod .

RUN go mod tidy

# docker run or docker-compose run を実行するときに実行されるコマンド
CMD go run main.go