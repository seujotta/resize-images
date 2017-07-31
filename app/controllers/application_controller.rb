class ApplicationController < ActionController::API
  def current_url
    url_for :only_path => false
  end
end
