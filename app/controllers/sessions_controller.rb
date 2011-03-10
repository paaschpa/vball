class SessionsController < ApplicationController
    def login
    session[:user_id] = nil
    if request.post?
      if User.count.zero?
        user = User.new(:name => params[:name], :password => params[:password])
        user.save
      end
      user = User.authenticate(params[:name], params[:password])
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_url] = nil
        redirect_to(uri || {:controller => "teams", :action => "index"} )
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to :action => :login
  end

end