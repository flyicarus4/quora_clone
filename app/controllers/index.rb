get '/' do
  erb :index
end

get '/sign_up' do
  erb :sign_up
end

post '/create_user' do
  User.create(params[:user])

  redirect '/' 
end

post '/login_user' do

end