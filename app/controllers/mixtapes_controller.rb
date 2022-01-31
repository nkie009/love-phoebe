class MixtapesController < ApplicationController

  before_action :check_if_logged_in, except: [:index, :show]

  def new
    @mixtape = Mixtape.new
  end

  def create
    @mixtape = Mixtape.create mixtape_params
    @mixtape.user_id = @current_user.id
    @mixtape.save

    if @mixtape.persisted?
      redirect_to mixtapes_path
    else
      render :new
    end
    

  end

  def index
    @mixtapes = Mixtape.all
  end

  def show
  end

  def edit

    @mixtape = Mixtape.find params[:id]
    redirect_to login_path unless @mixtape.user_id == @current_user.id

  end

  def update
    @mixtape = Mixtape.find params[:id]
    #Dont perfom the edit on the item (ie dont change the DB)
    
    if @mixtape.user_id != @current_user.id
      redirect_to login_path
      return
    end

    

      if @mixtape.update mixtape_parmas

        redirect_to mixtape_path(@mixtape)

      else

        render :edit 
        
      end


    redirect_to mixtape_path(@mixtape)

  end

  def destroy
  end

  def mixtape_params
    params.require(:mixtape).permit(:name, :image)
  end

end
