require 'sinatra'
require 'newrelic_rpm'

get '/*' do
  redirect '/index.html'
end

