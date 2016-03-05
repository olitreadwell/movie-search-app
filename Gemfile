source "https://rubygems.org"

#PostgreSQL driver
group :production do
  gem "pg"
end

#Sinatra
gem "sinatra"
gem "sinatra-contrib"

#DataMapper
gem "dm-core"
gem "dm-migrations"
gem "dm-postgres-adapter", :group => :production
gem "dm-sqlite-adapter", :group => :development

gem 'httparty'

group :test do
  gem 'minitest'
  gem 'rack-test'
end

group :test, :development do
  gem "pry"
end
