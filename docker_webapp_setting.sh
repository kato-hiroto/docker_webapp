#!/bin/sh

# dockerのリポジトリ設定
# sudo yum install -y yum-utils
# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# # dockerのインストール
# sudo yum install docker-ce docker-ce-cli containerd.io

# # dockerの起動
# sudo systemctl start docker
# sudo systemctl enable docker

# docker-composeのインストール
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
sudo chmod +x /usr/bin/docker-compose

# hostにホスト名を書き込み
echo "127.0.0.1   localweb.test" | sudo tee -a /etc/hosts

# mkdir
mkdir docker_webapp && cd "$_"
mkdir https-portal-data

# docker-compose.ymlをダウンロード
curl -L "https://raw.githubusercontent.com/kato-hiroto/docker_webapp/master/docker-compose.yml" -o ./docker-compose.yml

# docker-compose.ymlの起動
sudo docker-compose up -d
