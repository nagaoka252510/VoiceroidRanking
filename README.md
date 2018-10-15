# VoiceroidRanking

ニコニコ動画に投稿された動画で、タグに「VOICEROID」を含む動画の
投稿日を基準とした月間再生数ランキングを確認できるWebサイトです<br>
月別の動画情報は[こちら](https://github.com/nagaoka252510/CrawlingVoiceroidVideos)で取得しています

# Dependency
- Ruby 2.5.1
- Rails 5.2.1

# Setup
## Database
sqlite3での実装です<br>
マイグレーションを実施するとテーブルのみ作成します

```
$ rails db:migrate
```

## サービス起動
```
$ rails server
```

ローカルでの起動確認<br>
http://localhost/

# Licence
This software is released under the MIT License, see LICENSE.<br>
MITライセンスを採用しています。詳細はLISENCEを参照ください