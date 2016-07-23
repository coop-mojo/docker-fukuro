# docker-fukuro
生協の知恵袋を開発する環境が入った Dockerfile です。

以下のソフトウェアがインストールされています。

- dmd: D言語のコンパイラ
- dub: D言語のビルドシステム
- git: バージョン管理システム

# 動かし方

```
$ xhost local:root
$ sudo docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix moecoop
```

環境変数 `FUKURO` を変更することで、取得するリポジトリを変更することができます。
また VOLUME `/work` を変更することで、ローカルのディレクトリに知恵袋のディレクトリを保存できます。

# ライセンスについて
このリポジトリは CC0 のもとで公開されています。詳細は[LICENSE](LICENSE)をご覧ください。

