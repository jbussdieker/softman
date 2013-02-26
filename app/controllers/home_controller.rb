class HomeController < ApplicationController
  def index
  end

  def whatsmyip
    render :text => request.remote_ip
  end
end
