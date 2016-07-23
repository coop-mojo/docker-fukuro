# 生協の知恵袋 裁縫セット
[生協の知恵袋](https://github.com/coop-mojo/moecoop)の開発環境をひとまとめにした開発キットです。

以下のソフトウェアがインストールされています。

- dmd: D言語のコンパイラ
- dub: D言語のビルドシステム
- git: バージョン管理システム
- 他色々

# 動かし方

```
$ xhost local:root
$ sudo docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix moecoop/docker-fukuro
```

環境変数 `FUKURO` を変更することで、取得するリポジトリを変更することができます。
また VOLUME `/work` を変更することで、ローカルのディレクトリに知恵袋のディレクトリを保存できます。

## 実行例
- ローカルのディレクトリ `~/repository` に知恵袋のリポジトリをダウンロードしたい
```
$ sudo docker run -it --rm -v ~/repository:/work -v /tmp/.X11-unix:/tmp/.X11-unix moecoop/docker-fukuro
```

- 知恵袋公式ではなく、フォークした自分のリポジトリをダウンロードしたい
```
$ sudo docker run -it --rm -e FUKURO=https://github.com/foobar/moecoop.git -v /tmp/.X11-unix:/tmp/.X11-unix moecoop/docker-fukuro
```

# バグ報告・要望など
Github の [Issues](https://github.com/coop-mojo/docker-fukuro/issues) にどうぞ！

# ライセンスについて
Dockerfile や関連スクリプトは CC0 のもとで公開されています。詳細は[LICENSE](LICENSE)をご覧ください。
