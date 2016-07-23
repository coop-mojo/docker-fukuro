#!/bin/sh

if [ ! -e moecoop ]; then
    git clone $FUKURO moecoop
else
    echo "moecoop ディレクトリが存在するので、git clone を省略します。"
fi

cd moecoop
pip3 install -r manual/requirements.txt
exec bash
