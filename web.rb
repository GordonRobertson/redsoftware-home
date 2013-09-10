require 'sinatra'
require 'newrelic_rpm'
require 'pony'

post '/message' do
    Pony.mail :to => 'gordon.robertson@redsoftware.co.uk',
              :from => 'enquiry@redsoftware.co.uk',
              :subject => 'The Subject',
              :body => 'Hello World'
end
    

get '/*' do
  redirect '/index.html'
end

