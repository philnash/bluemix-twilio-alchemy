require 'sinatra'
require 'json'
require 'alchemy_api'

def vcap_services
  JSON.parse(ENV['VCAP_SERVICES'])
end

AlchemyAPI.key = vcap_services['user-provided'][1]['credentials']['apikey']

post '/messages' do
  content_type "text/xml"

  sentiment = AlchemyAPI.search(:sentiment_analysis, text: params["Body"])

  case sentiment['type']
  when "positive"
    message = "Glad you're having a good day! Is there anything I can help with?"
  when "negative"
    message = "Sorry things aren't going so well, how can I help?"
  else
    message = "What can I help with?"
  end

  "
  <Response>
    <Message>#{message}</Message>
  </Response>
  "
end
