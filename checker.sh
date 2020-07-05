#!/bin/bash

#テスト(正常動作確認)
./kadai4.sh 2 4 && echo 2 && exit 1 || 2> /tmp/result-$$

#テスト（引数が1つしか無い場合）
./kadai4.sh $1 2> /tmp/result-$$ && exit 1

#テスト（引数に0を与えた場合）
.kadai4.sh 0 0 && echo "" && exit 1 || 2> /tmp/result-$$

echo "complete"
