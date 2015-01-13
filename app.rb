require('sinatra')
require('sinatra/reloader')
also_reload('/lib/**/*.rb')
require('./lib/places')

get ('/') do
  @place = Place.all()
  erb(:index)
end

post ('/places') do
  new_place = params.fetch('place_name')
  place = Place.new(new_place)
  place.save()
  #erb(:success)
  redirect('/')
end
