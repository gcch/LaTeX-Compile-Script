# LaTeX コンパイルスクリプト

Windows ユーザのための LaTeX コンパイルスクリプト群。


## Overview

TeX ファイルを手軽にコンパイルするためのスクリプト群である。
スクリプトを実行した際に TeX ファイルの文字置換 (デフォルトでは句読点を「、。」から「，．」に置換)、フォントの埋め込み (デフォルトでは Windows 用スクリプトでは「MS明朝」＆「MSゴシック」、Mac OS X 用スクリプトでは「ヒラギノ明朝」＆「ヒラギノ角ゴ」、Linux 用スクリプトでは「IPA明朝」＆「IPAゴシック」) を行う処理を組み込んである。
メインは Windows ユーザ向け、Mac OS X や Linux 用のスクリプトも一応用意してある。

デフォルトは理工系学生向け仕様になっているので、利用用途に合わせてカスタマイズしてください。

また、おまけ (？) として OS X El Capitan ユーザ向けにヒラギノフォントを TTC から OTF に変換するためのスクリプトも含まれている。 ([この記事](http://www.muskmelon.jp/?p=1204)を参考に作成。muskmelon さんに感謝。)


## Attention

デフォルト設定のまま Shift-JIS 以外の文字コードの TeX ソースをコンパイルすると文字化けが発生します。

Shift-JIS 以外の TeX ソースをコンパイルする場合には、文字列置換処理部分をコメントアウトするか、好みの文字コード向けの設定 (スクリプトの中身の Shift-JIS 関連の部分の変更とスクリプトの文字コードの変更) に変更する必要があります。


## Usage

詳細は、付属の sample.pdf を参照のこと。


## References

* [IPAフォントのダウンロード](http://ipafont.ipa.go.jp/old/ipafont/download.html)
* [OTC から OTF を抽出（自動化） | マスクメロン](http://www.muskmelon.jp/?p=1204)
* [FontForge Open Source Font Editor](http://fontforge.github.io)
* [TeX インストーラ 3](http://www.math.sci.hokudai.ac.jp/~abenori/soft/abtexinst.html)
* [MacTeX - TeX Users Group](http://www.tug.org/mactex/)


## License

This script is released under the MIT license. See the [LICENSE](LICENSE) file.


## Author

* tag (Blog: [とりとめもないはなし。](http://karat5i.blogspot.jp/) | Twitter: [@tag_ism](https://twitter.com/tag_ism))
