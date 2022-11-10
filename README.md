# README
API only Application

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version:
  - ruby 3.1.2p20

* Rails Version: 
  - rails 7.0.4

* Postgres Version:
  - pg 1.4.4
# Used Technologies/ Tools
- ROR: Backend development

# Setup Details 

## Install
git clone https://github.com/akshay2408/product_scrapper_backend.git
bundle install

#### 5. Create the databases
rails db:create

#### 3. Run migrations
```
rails db:migrate
```
#### Run server
```
bundle exec rails s
```

#### Run sidekiq
```
bundle exec sidekiq
```

#### Run rake task
```
rake batch:expire_product_data
```

## Implemented Feature

1. Form where user enter the scraped url and get the product details
2. Home page where user get the all the products
3. Product details page where user get the details of specific products 
