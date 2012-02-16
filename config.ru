require 'rack'

class Railz
  def call(env)
    code = 200
    headers = { "Content-Type" => "text/plain" }
    body = env.map{ |k, v| "#{k}: #{v}" }.join("\n")
    
    [code, headers, [body]]
  end
end

run Railz.new
