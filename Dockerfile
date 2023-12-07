# Node.jsの公式イメージをベースにする
FROM node:lts

# ワーキングディレクトリを設定する
WORKDIR /app

# package.jsonとpackage-lock.jsonをコピーする
COPY package*.json ./

# プロジェクトの依存関係をインストールする
RUN npm install

# プロジェクトのファイルをコンテナにコピーする
COPY . .

# ビルドスクリプトを実行する
CMD ["npm", "run", "build"]
