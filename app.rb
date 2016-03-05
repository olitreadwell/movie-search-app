require 'sinatra'
require 'json'
require 'dm-core'
require 'dm-migrations'

require 'httparty'

require_relative 'user'
require_relative 'routes'

set :public_folder, 'assets'
