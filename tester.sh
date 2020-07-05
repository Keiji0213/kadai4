#!/bin/bash

#テスト(引数入力漏れ)
./kadai4.sh 2> /tmp/result-$$ && exit 1
#エラー出力
echo "" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#テスト（引数が1つしか無い場合）
./kadai4.sh $1 2> /tmp/result-$$ && exit 1
#エラー出力
echo "" 2> /tmp/ans-$$ &&

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#テスト（引数に0を与えた場合）
.kadai4.sh 0 0 2> /tmp/result-$$ && exit 1
echo "" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete"
