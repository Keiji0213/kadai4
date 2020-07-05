#!/bin/bash

kadai4_check() {
	if [ "$1" != "$2" ]; then
		echo "$3" >&2
		exit 1
	fi
}


#テスト(引数の個数確認)
message="2つの引数を指定してください"
kadai4_check "${message}" "$(./kadai4.sh 2>&1)" "引数無し"
kadai4_check "${message}" "$(./kadai4.sh 2 2>&1)" "引数不足"
kadai4_check "${message}" "$(./kadai4.sh 3 6 9 2>&1)" "引数過多"

#テスト（動作確認 引数1 > 引数2）
kadai4_check "5" "$(./kadai4.sh 100 5 2>&1)" "計算エラー 引数1 > 引数2"

#テスト（動作確認 引数2 > 引数1）
kadai4_check "2" "$(./kadai4.sh 2 200 2>&1)" "計算エラー 引数2 > 引数1"

kadai4_check "" "$(.kadai4.sh 0 0 2>&1)" "ゼロ同士"

