require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/definitions')
require('./lib/words')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/word/new') do
  erb(:word_form)
end

post('/words') do
  Word.new(params.fetch('word')).save()
  @words = Word.all()
  erb(:index)
end

get('/:word') do
  @word = Word.find(params.fetch('word'))
  erb(:word)
end

get('/:word/definition/new') do
  @word = Word.find(params.fetch('word'))
  erb(:definition_form)
end

post('/:word') do
  @word = Word.find(params.fetch('word'))
  @word.add_definition(Definition.new(params.fetch('definition')))
  erb(:word)
end
