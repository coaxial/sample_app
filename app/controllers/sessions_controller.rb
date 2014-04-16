class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && authenticate(params[:session][:password])
      # Sign the user in
    else
      flash.now[:error] = 'Invalid email/password combination.' # Using flash.now vs flash makes the flash message disapear after render. Otherwise the flash persists on the next page.
      render 'new'
    end
  end

  def destroy
  end
end
