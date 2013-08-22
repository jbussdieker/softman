class HomeController < ApplicationController
  def index
  end

  def whatsmyip
    render :text => request.remote_ip
  end

  def waitforit
    sleep params[:sleep].to_i
    render :text => "Legendary"
  end
end
