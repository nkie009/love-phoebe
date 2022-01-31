class SessionController < ApplicationController
  def new
  end

  def create
    # raise 'hell'
    #1. check if the email address entered is actually in the DB
    user = User.find_by email: params[:email]
    #2. Did we actually find a user row for that email address
    if user.present? && user.authenticate(params[:password])
      # raise 'CORRECT!'
      session[:user_id] = user.id
      redirect_to products_path

    else

      flash[:error] = 'Invalid email or password'

      redirect_to login_path

      #either the was nil (no such email address), or the password entered into
      #the login form, when encrypted, did not match the password_digest stored for this account

    end #credentials check


  end #def create

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end #of destroy

end# of class
