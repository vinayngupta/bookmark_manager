get '/users/new' do
	@user = User.new
	erb :"users/new"
end

post '/users' do
	#this was User.create initially but that results in saving to the database 
	#which we don't want to do unless valid. 
	@user = User.new(:email => params[:email],
				:password => params[:password],
				:password_confirmation => params[:password_confirmation])
	if @user.save
		session[:user_id] = @user.id
		redirect to('/')
	else
		flash.now[:errors] = @user.errors.full_messages
		#we replace the line below with above code 
		#flash[:notice] = "Sorry, your passwords don't match"
		erb :"users/new"
	end
end