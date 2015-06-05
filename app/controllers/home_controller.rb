class HomeController < ApplicationController

  def registration
    if params[:name].present? && params[:email].present?
      RegisterMailer.send_user_data(params[:name], params[:email]).deliver_now
      render :success
      return
    else
      render :error
      return
    end
  end
end
