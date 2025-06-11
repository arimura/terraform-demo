# Terraform Demo

このプロジェクトは、TerraformでAWS S3バケット「hoge」を作成するデモです。

## 前提条件

- AWS CLIが設定済みであること
- Terraformがインストール済みであること

## 使用方法

1. Terraformを初期化する
```bash
terraform init
```

2. 実行計画を確認する
```bash
terraform plan
```

3. リソースを作成する
```bash
terraform apply
```

4. リソースを削除する
```bash
terraform destroy
```

## 作成されるリソース

- AWS S3バケット「hoge」
- バケットのバージョニング設定
- サーバーサイド暗号化設定
- パブリックアクセスブロック設定

## 設定可能な変数

- `aws_region`: AWSリージョン（デフォルト: ap-northeast-1）
- `environment`: 環境名（デフォルト: dev）