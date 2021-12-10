# README

##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.0](https://www.ruby-lang.org/en/documentation/installation/)
- Rails [6.1.4](https://rubyonrails.org/)

##### 1. Check out the repository

```bash
git clone git@github.com:adn0liva/ecommerce-routing.git
```

##### 2. Install gems and webpacker

Execute bundler to install gems from Gemfile

```bash
gem install bundler
bundle
rails webpacker:install
```

##### 3. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000