require 'byebug'
enable :session

get '/' do
  erb :index
end

get '/sign_up' do
  erb :sign_up
end

get '/home_page' do
  session[:user]
  erb :home_page
end

get '/profile' do
  @username = session[:user].username
  erb :profile
end

get '/logout' do
  session.clear
  redirect '/'
end

post '/create_user' do
  User.create(params[:user])

  redirect '/' 
end

post '/login_user' do
  @checker = User.authen(params[:username], params[:password])

  if @checker == true
  	session[:user] = User.find_by(username: params[:username])
	redirect '/home_page'
  else
	redirect '/'
  end
end

