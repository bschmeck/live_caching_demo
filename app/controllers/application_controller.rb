class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include ActionController::Live

  caches_action :show, expires_in: 10.seconds

  def show
    render plain: "Hello World! [#{Time.now.iso8601}]", content_type: "text/plain"
  end
end
