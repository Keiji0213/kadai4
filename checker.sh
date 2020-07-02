#!/bin/bash

#実行結果(同じじゃない場合)
./kadai4.sh $1 $2 > /tmp/result-$$
#エラー出力
echo "error" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

#実行結果（同じ場合）
./kadai4.sh $1 $1 > /tmp/result-$$
#出て欲しい出力
echo "same" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete
"
