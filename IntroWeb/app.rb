require 'sinatra'

get '/' do
  erb(:index)
end

get '/secret' do
  erb(:secret)
end

get '/random_cat' do
  @cat_name = ['Josie', 'Will', 'Albion', 'Toby', 'Luke'].sample
  erb(:cat)
end

get '/named_cat' do
  p params
  @cat_name = (params[:name])
  p @cat_name
  erb(:cat)
end

get '/bristol_cat' do
  @cat_name = params[:name]
  erb(:bristol_cat)
end
