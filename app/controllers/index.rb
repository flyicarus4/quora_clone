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
  @questions = Question.all
  erb :home_page
end

get '/profile' do
  @username = session[:user].username
  erb :profile
end

get '/new_question' do
  session[:user]
  erb :new_question
end

get '/logout' do
  session[:user] = nil
  redirect '/'
end

post '/create_user' do
  User.create(params[:user])

  redirect '/' 
end

post '/create_question' do
  @checker = session[:user].id
  Question.create(title: params[:title], user_id: @checker)
  
  redirect '/home_page'
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