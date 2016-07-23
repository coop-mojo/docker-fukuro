#!/bin/sh

if [ ! -e moecoop ]; then
    git clone $FUKURO moecoop
else
    echo "moecoop ディレクトリが存在するので、git clone を省略します。"
fi

cd moecoop
exec bash
