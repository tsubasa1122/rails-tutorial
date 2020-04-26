# Rails6 tutorialを学び直す

## 環境
```
Ruby 2.7.1
Rails 6.0
```


### Set up
```
$ git clone git@github.com:tsubasa1122/rails-tutorial.git
$ docker-compose build
$ docker-compose run web bundle exec rails webpacker:install

# DBの作成
$ docker-compose run web rake db:create
```

### Run
```
$ docker-compose up
```
