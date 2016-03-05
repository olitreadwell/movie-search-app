configure :development, :test do
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

class User
  include DataMapper::Resource
  property :id, Serial
  property :username, String, :required => true
  property :password, String, :required => true
end

DataMapper.finalize
