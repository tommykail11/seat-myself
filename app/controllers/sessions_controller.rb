class SessionsController < ApplicationController
  
  def new

  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to :root, :notice => "Welcome back to SeatMyself"
    else
      flash.now[:alert] = "Invalid credentials. Please try again!"
      render :new
    end
  end

  def destroy
    logout
    redirect_to :root, notice: "Bye... Hope you come back soon!"
  end 
end
