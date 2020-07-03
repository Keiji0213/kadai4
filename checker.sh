#!/bin/bash

#実行結果(引数入力漏れ)
./kadai4.sh > /tmp/result-$$
#エラー出力
echo "引数がありません" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果（引数が1つしか無い場合）
./kadai4.sh $1 > /tmp/result-$$
#エラー出力
echo "引数が1つしかありません" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete"
