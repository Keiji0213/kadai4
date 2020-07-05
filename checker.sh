#!/bin/bash

#テスト(引数の個数確認)
message="2つの引数を指定してください"
assert_equal "${message}" "$(./kadai4.sh 2>&1)" "引数無し"
assert_equal "${message}" "$(./kadai4.sh 2 2>&1)" "引数不足"
assert_equal "${message}" "$(./kadai4.sh 3 6 9 2>&1)" "引数過多"

#テスト（動作確認 $1 > $2）
assert_equal "5" "$(./kadai4.sh 100 5 2>&1)" "計算エラー $1 > $2"

#テスト（動作確認 $2 > $1)
assert_equal "2" "$(./kadai4.sh 2 100 2>&1)" "計算エラー $2 > $$1"

