$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'rack'
require 'railz'

run Railz.new
