class SessionsController < ApplicationController
  
  def new
    # nothing to do here!
  end

  def create
      return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    if session[:name] = params[:name]
    session.delete :name
    else
    # redirect_to controller: 'application', action: 'hello'
    end
  end
  
end
