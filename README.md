# Rubipara

ポップ ステップ げっちゅー☆  
プリパラの世界へようこそぷり  
Rubipara はプリパラの世界を知るための gem なんだぷり  
Rubipara を使い続けていれば、きっと君のところにもプリチケが届くぷり  

まだまだ Rubipara ピカピカけんきゅうせい(v0.0.1)だけど、  
これからも応援よろしくぷり♡

## Installation

以下の行を、君の Gemfile に追記するぷり  
Add this line to your application's Gemfile:

```ruby
gem 'rubipara'
```

できたら、以下のコマンドを実行するぷり  
And then execute:

```
$ bundle
```

それか、以下のコマンドを実行してもインストールできるぷりよ  
Or install it yourself as:

```
$ gem install rubipara
```

さあ、ここまでできたらコマンドラインで rubipara と打ってみるぷり  
コマンドのヘルプがでたら、計算どおりぷり

## Usage

Rubipara は CLI で機能を提供しているぷり  
こんな使い方ができるから、よーく勉強しておくぷり


##### キャラクターを一覧で表示させるぷり
```
$ rubipara character
#=> lala
#=> mirei
#=> sophie
#=> shion
#=> dorothy
#=> leona
```

##### キャラクターのプロフィールを表示させるぷり
```
$ rubipara character lala
#=> 真中らぁら のプロフィール
#=> 名前  真中らぁら
#=> 声優  茜屋日海夏
#=> 誕生日 11月20日
#=> 学年  小学5年生
#=> チーム SoLaMi SMILE
#=> 口癖  かしこま！
```

##### アニメのエピソードを表示させるぷり
```
$ rubipara episode 1
#=> 第1話 アイドル始めちゃいました！

# 今までのエピソードをすべて表示させたい場合は、引数なしで実行するぷり
$ rubipara episode
```

##### らぁらとかしこま！するぷり
```
# らぁらがかしこま！してくれるぷり
$ rubipara kashikoma

# らぁらに言ってほしい言葉を教えてあげるぷり
$ rubipara kashikoma <word>
```

##### もっとくわしく知りたければ help を見るぷり
```
$ rubipara help [COMMAND]
```

## Version

0.0.1 (ピカピカけんきゅうせい)

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/hoge`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin feature/hoge`)
5. Create a new Pull Request
