require 'sinatra'
require 'newrelic_rpm'
require 'mail'
require 'postmark'

post '/message' do

    paramstr = params.to_s

    message = Mail.new do
      from            'homepage@redsoftware.co.uk'
      to              'Gordon Robertson <gordon.robertson@redsoftware.co.uk >'
      subject         'Get In Touch'
      body            paramstr

      delivery_method Mail::Postmark, :api_key => ENV['POSTMARK_API_KEY']
    end

    message.deliver

end

get '/*' do
  redirect '/index.html'
end

