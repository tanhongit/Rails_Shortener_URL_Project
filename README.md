# Welcome to Rails Shortener URL Project by TANHONGIT

We build a **_Link Shortener Web Application_** in Ruby on Rails 6.

# 1. Technology
- Ruby on Rails

# 2. Configuration requirements
We are going to build the web application using:
- Rails 6.0.3.2
- Ruby 2.7.1

# 4. Runing

### 4.1. Clone Repo

```
$ git clone https://github.com/TanHongIT/Rails_Shortener_URL_Project
$ cd Rails_Shortener_URL_Project
```

### 4.2. Bundle Install 

```
$ bundle install
```

### 4.3. Yarn Install 

```
$ yarn install
```

### 4.4. Create database with Postgresql

You must change the appropriate database configuration

Change configuration at _"**config/database.yml**"_ with Postgresql.

```ruby
default: &default
  adapter: postgresql
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
  username: rails_shortener_url_project
  password: 1974
  host: localhost

# tutorial for ubuntu linux:
# sudo -u postgres psql
# create user "rails_shortener_url_project" with password '1974';  
# create database "rails_shortener_url_project" owner "rails_shortener_url_project"; 

development:
  <<: *default
  database: rails_shortener_url_project

# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  <<: *default
  database: rails_shortener_url_project_test

production:
  <<: *default
  database: rails_shortener_url_project_production
```

You must change the username, password and database name accordingly!

### 4.5. run rails db:migrate

```
$ rails db:migrate
$ rails db:migrate RAILS_ENV=development
$ rails db:migrate RAILS_ENV=test
```

### 4.6. Run server 

```
$ rails s
```

Now, go to http://localhost:3000/
