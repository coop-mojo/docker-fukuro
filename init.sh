#!/bin/sh

if [ ! -e moecoop ]; then
    git clone $FUKURO moecoop
    pip3 install -r moecoop/manual/requirements.txt
else
    echo "moecoop ディレクトリが存在するので、git clone を省略します。"
fi

cd moecoop
exec bash
