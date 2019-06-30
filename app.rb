require 'rubygems'
require 'bundler'

Bundler.require

set :database, {adapter: "sqlite3", database: "contacts.sqlite3"}

get '/' do
  @now = Time.now
  erb :index
end

get '/contact_new' do
  erb :contact_form
end

post '/contacts' do
  puts '### 送信されたデータ ###'
  p params
  redirect '/'
end
