class HomeController < ApplicationController
  def index
  end

  def whatsmyip
    render :text => request.remote_ip
  end

  def waitforit
    sleep params[:sleep]
    render :text => "Legendary"
  end
end
