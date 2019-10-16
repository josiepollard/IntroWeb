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

get '/cat_form' do
  erb(:cat_form)
end

post '/named_cat' do
  p params
  @cat_name = params[:name]
  erb(:cat)
end

get '/bristol_cat' do
  @cat_name = params[:name]
  erb(:bristol_cat)
end
