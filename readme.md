# 環境に強そうなwebサイト作成

## コマンド

### dockerのリポジトリ設定
```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
```

### dockerのインストール
```
sudo yum install docker-ce docker-ce-cli containerd.io
```

### dockerの起動
```
sudo systemctl start docker
sudo systemctl enable docker
```

### docker-composeのインストール
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose
```

### hostにホスト名を書き込み
```
echo "127.0.0.1   localweb.test" | sudo tee -a /etc/hosts
```

### mkdir
```
mkdir docker_webapp && cd "$_"
mkdir https-portal-data
```

### docker-compose.ymlをダウンロード
```
curl -L "https://raw.githubusercontent.com/kato-hiroto/docker_webapp/master/docker-compose.yml" -o ./docker-compose.yml
```

### docker-compose.ymlの起動
```
docker-compose up -d
```

### 起動確認
```
curl https://localweb.test -k
```
ここでWelcome to nginx!ページのソースが表示されたらOK

### docker-compose.ymlの停止
```
sudo docker-compose down
```

## 参考サイト
- [CentOS 7 に Docker と Docker-Compose をインストールする](https://blog.hiros-dot.net/?p=10440)
- [Docker Composeを使ってサクッとNginxコンテナを起動する](https://qiita.com/NagaokaKenichi/items/c03366f0b84b12c0a30d)
- [Docker Compose - docker-compose.yml リファレンス](https://qiita.com/zembutsu/items/9e9d80e05e36e882caaa)
- [docker で全自動 Let's encrypt](https://qiita.com/kuboon/items/f424b84c718619460c6f)
- [sudoでリダイレクトをしたいとき](https://yut.hatenablog.com/entry/20111013/1318436872)
- [https-portalでローカルのwebサーバを自己証明書でSSL化するメモ](https://7me.nobiki.com/2020/04/18/docker-https-portal-ssl-certificate-local/)
- [よく使うcurlコマンドのオプション](https://qiita.com/ryuichi1208/items/e4e1b27ff7d54a66dcd9)
- [【Docker】docker-composeコマンド早見表](https://qiita.com/beanbeenzou/items/47207bb131ec5a158774)
