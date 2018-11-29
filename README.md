# RailsをDockerで立ち上げる雛形プロジェクト

1. このリポジトリのファイルをコピーしたディレクトリを作る
2. 作成したディレクトリで`init.sh`を叩く
3. `config/database.yml`のMySQLのパスワード、ホストの部分を書き換える
4. コンテナをビルドして立ち上げる
    - `docker-compose build`
    - `docker-compose up -d`

ほぼ、以下の記事を参考に作りました。感謝します。
https://qiita.com/saitoeku3/items/b1aa2ae143624e551aea

