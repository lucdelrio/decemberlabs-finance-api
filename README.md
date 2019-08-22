# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

2.6.1

* System dependencies

* Configuration

* Database creation

sudo -u postgres createuser --superuser decemberlabs

rails db:create

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

https://sourcey.com/articles/building-the-perfect-rails-api

DROP DB
sudo -u lucdelrio dropdb decemberlabs-finance-api_development

CREATE DB USER
<!-- create role decemberlabs with createdb login password 'aqwe123'; -->
create role decemberlabs with superuser;

GRANT ALL PRIVILEGES ON DATABASE template0 to root;

\du
\l

bin/rails g model Supplier name:string
