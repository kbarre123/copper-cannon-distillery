class SubscribersController < ApplicationController

  # This renders /views/subscribers/new
  def new
    @subscriber = Subscriber.new
  end
  
  def create
    @subscriber = Subscriber.new(secure_params)
    if @subscriber.valid?
      @subscriber.update_spreadsheet
      @subscriber.subscribe
      flash[:info] = "#{@subscriber.name}, thanks for subscribing!"
      redirect_to root_path
    else
      render :new
    end
  end
  
  private
  
  def secure_params
    params.require(:subscriber).permit(:name, :email)
  end

end