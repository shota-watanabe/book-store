# 概要
FinderObject学習用リポジトリ。 

[Digging Into the Finder Object Pattern](http://vaidehijoshi.github.io/blog/2015/10/27/digging-into-the-finder-object-pattern/)の内容を、アプリを作成して試してみました。  

動作確認はPostmanで行います。

# 環境構築
1. bundle install

```ruby
bundle install
```

2. DB作成、マイグレート

```ruby
bundle exec rails db:create
```
```ruby
bundle exec rails db:migrate
```

3. seed実行

```ruby
bundle exec rails db:seed
```
