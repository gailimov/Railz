require 'rack'

class Railz
  def call(env)
    # Creates request and response objects
    @request = Rack::Request.new(env)
    @response = Rack::Response.new
    
    @response.status = 200
    @response["Content-Type"] = "text/html"
    
    # Sets response body from request params
    @response.body = @request.params.map { |k, v| "#{k}: #{v} " }
    
    @response.finish
  end
end

run Railz.new
