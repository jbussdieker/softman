class HomeController < ApplicationController
  def index
  end

  def whatsmyip
    render :text => request.remote_ip
  end

  def whatsmyheaders
    headers = request.headers.find_all { |k, v| k != "HTTP_VERSION" && k.start_with?("HTTP_") }
    body = headers.collect {|k,v| "#{k.gsub(/^HTTP_/, "")}: #{v}" }.join("\n")

    render :text => body
  end

  def waitforit
    sleep params[:sleep].to_i
    render :text => "Legendary"
  end
end
