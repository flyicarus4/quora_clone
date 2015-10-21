require 'byebug'
enable :session

get '/' do
  erb :index
end

get '/sign_up' do
  erb :sign_up
end

get '/home_page' do
  erb :home_page
end

post '/create_user' do
  User.create(params[:user])

  redirect '/' 
end

post '/login_user' do
  @checker = User.authen(params[:username], params[:password])

  if @checker == true
	redirect '/home_page'
  else
	redirect '/'
  end
end