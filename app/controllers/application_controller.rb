class ApplicationController < ActionController::API
  before_action :add_cors_headers

  private

  def add_cors_headers
    response.set_header('Access-Control-Allow-Origin', '*')
    response.set_header('Access-Control-Allow-Methods', 'GET')
    response.set_header('Access-Control-Allow-Headers', 'Origin, Content-Type, Accept')
  end
end
