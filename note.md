# メモ

## 流れ

1-0. ECR のリポジトリを作成する
2-1. AWS CLI を用いてレジストリに対して、Docker クライアントを認証する
2-2. 実際に Dockerfile をビルドする
`docker build -t ecr-test .`
2-3. 構築が完了したら、このリポジトリにイメージを Push 出来るようにイメージにタグをつける
`docker tag ecr-test:latest 367508679777.dkr.ecr.ap-northeast-1.amazonaws.com/ecr-test:latest`
2-4. このイメージを ECR へ Push する
`docker push 367508679777.dkr.ecr.ap-northeast-1.amazonaws.com/ecr-test:latest`
