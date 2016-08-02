require 'sinatra'
require 'json'

post '/messages' do
  content_type "text/xml"

  add_ons = JSON.parse(params["AddOns"])
  if add_ons["status"] == "successful"
    sentiment = add_ons["results"]["ibm_watson_sentiment"]["result"]["docSentiment"]

    case sentiment['type']
    when "positive"
      message = "Glad you're having a good day! Is there anything I can help with?"
    when "negative"
      message = "Sorry things aren't going so well, how can I help?"
    else
      message = "What can I help with?"
    end
  else
    message = "What can I help with?"
  end

  "
  <Response>
    <Message>#{message}</Message>
  </Response>
  "
end
