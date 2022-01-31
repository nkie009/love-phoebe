class ApplicationController < ActionController::Base

  before_action :fetch_user

  def fetch_user
    #check if the user idea_id in the seesion hash is set, and if it is the ID of an actual user in our users table; if it is, get the row object for that user and save it into @current_user which any action's code can access
    #if the ID is NOT a current ID, consider it invalid and delete the seesion! - this will prevent weird erros with stale user_ids when re-seeding our DB (or when users delete accounts)

    if session[:user_id].present?
      @current_user = User.find_by id: session[:user_id]
    end
    

    session[:user_id] = nil unless @current_user.present?

  end # of fetch_user

    def check_if_logged_in
      unless @current_user.present?
        flash[:error] = 'You must be logged in to perform that action'
        redirect_to login_path
      end # login check

    end # of check if login


end# of class
