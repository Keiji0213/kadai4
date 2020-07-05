■課題4の説明

1. kadai4.shについて
最大公約数を算出するスクリプトです。
以下のように、引数を2つ与えて実行することで機能します。

bash /home/kf32/kadai4/kadai4.sh 100 8
→4が回答される


2. checker.shについて
kadai4.shをテストするスクリプトです。
以下の5パターンでテストしています。

・引数が無かった場合
・引数が1つだけしか与えられなかった場合
・引数を3つ与えてしまった場合
・引数1 > 引数2の時に正しく算出されるか
・引数2 > 引数1の時に正しく算出されるか

3. 補足
GitHubのレポジトリ
https://github.com/Keiji0213/kadai4

Travis CIのURL
https://travis-ci.com/github/Keiji0213/kadai4


以上
