require 'sinatra/base'
require 'sinatra/json'
require 'sinatra/reloader'

class App < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'hello {{cookiecutter.project_name}}'
  end
end
