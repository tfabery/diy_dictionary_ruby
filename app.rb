require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/definitions')
require('./lib/words')

get('/') do
  erb(:index)
end
