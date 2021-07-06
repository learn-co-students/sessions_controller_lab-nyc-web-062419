class SessionsController < ApplicationController
  def new
  end

  def create 
    if params[:name] == ""
      render :new 
    elsif params[:name] == nil 
      render :new
    else 
      session[:name] = params[:name]
      redirect_to '/'
    end 
  end 

  def destroy
    session.destroy 
    redirect_to '/'
  end 
end
