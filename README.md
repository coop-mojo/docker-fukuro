# 生協の知恵袋 お裁縫セット
[生協の知恵袋](https://github.com/coop-mojo/moecoop)の開発環境をひとまとめにした開発キットです。

以下のソフトウェアがインストールされています。

- dmd: D言語のコンパイラ
- dub: D言語のビルドシステム
- git: バージョン管理システム
- Sphinx: ドキュメント生成システム
- 他色々

# 推奨環境
- Linux
  - [Docker](https://www.docker.com/)
  - [Xサーバー](https://www.x.org/wiki/)
      - 通常はどちらも、パッケージ管理システム経由でインストールできます。

- Windows
  - [Docker toolbox](https://www.docker.com/products/docker-toolbox)
  - [Xming-mesa](http://www.straightrunning.com/XmingNotes/)

# 動かし方

Linux 環境:
```
$ xhost local:root
$ sudo docker run -it --rm -v /tmp/.X11-unix:/tmp/.X11-unix moecoop/docker-fukuro
```

Windows 環境 (`$ip` は手元の PC の IP アドレス):
```
$ export DISPLAY=$ip:0.0
$ export PATH=/c/Program\ Files\ \(x86\)/Xming:$PATH
$ run Xming :0 -multiwindow -ac -clipboard
$ docker run -it --rm -e DISPLAY=$DISPLAY moecoop/docker-fukuro
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

# FAQ
- エディタは？
  - あえて入れていません。手元にあるお好きなエディタをお使いください。

# KNOWN BUG
- ビルドした知恵袋に日本語を入力できない
  - お裁縫セットのバグではなく、Linux 版の知恵袋にある問題です ([知恵袋のIssue](https://github.com/coop-mojo/moecoop/issues/27))。
  - メモ帳などから入力した文字列をコピーするか、Migemo 検索を使って対処してください。

# バグ報告・要望など
Github の [Issues](https://github.com/coop-mojo/docker-fukuro/issues) にどうぞ！

# ライセンスについて
Dockerfile や関連スクリプトは CC0 のもとで公開されています。詳細は[LICENSE](LICENSE)をご覧ください。
